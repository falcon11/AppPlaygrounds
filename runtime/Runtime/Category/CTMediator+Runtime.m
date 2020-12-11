//
//  CTMediator+Runtime.m
//  Runtime
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "CTMediator+Runtime.h"

static NSString * const kTarget = @"Runtime";

@implementation CTMediator (Runtime)

- (UIViewController *)Runtime_viewController {
    return [self performTarget:kTarget action:@"runtimeTableViewController" params:nil shouldCacheTarget:NO];
}

@end
