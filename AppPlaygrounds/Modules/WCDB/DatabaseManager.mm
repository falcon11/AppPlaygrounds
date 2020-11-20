//
//  DatabaseManager.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "DatabaseManager.h"
#import "User.h"

NSString * const kDatabaseKey = @"888888";

@implementation DatabaseManager

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (NSString *)databasePath {
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    path = [path stringByAppendingPathComponent:@"database/restaurant.db"];
    NSLog(@"database path: %@", path);
    return path;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.database = [[WCTDatabase alloc] initWithPath:[self databasePath]];
        [self.database setCipherKey:[kDatabaseKey dataUsingEncoding:NSASCIIStringEncoding]];
    }
    return self;
}

- (void)prepare {
    [self createTables];
}

- (void)createTables {
    NSLog(@"%s begin", __FUNCTION__);
    NSArray *clses = @[
        User.class,
    ];
    for (Class cls in clses) {
        NSString *clsString = NSStringFromClass(cls);
        
        BOOL ret = [self.database createTableAndIndexesOfName:clsString withClass:cls];
        assert(ret);
    }
    NSArray *schemas = [self.database getAllObjectsOnResults:{WCTMaster.name, WCTMaster.sql} fromTable:WCTMaster.TableName];
    for (WCTMaster *table : schemas) {
        NSLog(@"SQL Of %@: %@", table.name, table.sql);
    }
    NSLog(@"%s end", __FUNCTION__);
}

@end
