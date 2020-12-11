//
//  Target_Runtime.m
//  Runtime
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Target_Runtime.h"
#import "RuntimeTableViewController.h"

@implementation Target_Runtime

- (UIViewController *)Action_runtimeTableViewController:(NSDictionary *)params {
    RuntimeTableViewController *vc = [[RuntimeTableViewController alloc] init];
    return vc;
}

@end
