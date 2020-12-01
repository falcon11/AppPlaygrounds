//
//  DatabaseManager.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WCDB/WCDB.h>

NS_ASSUME_NONNULL_BEGIN

#define RSTRTDB [DatabaseManager.sharedInstance database]

@interface DatabaseManager : NSObject

@property (nonatomic, strong) WCTDatabase *database;

+ (instancetype)sharedInstance;
- (instancetype)init;
- (void)prepare;

@end

NS_ASSUME_NONNULL_END
