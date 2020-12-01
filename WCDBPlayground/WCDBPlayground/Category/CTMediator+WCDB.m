//
//  CTMediator+WCDB.m
//  WCDBPlayground
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "CTMediator+WCDB.h"

@implementation CTMediator (WCDB)

- (UIViewController *)WCDB_viewController {
    return [self performTarget:@"WCDB" action:@"WCDBViewController" params:nil shouldCacheTarget:NO];
}

@end
