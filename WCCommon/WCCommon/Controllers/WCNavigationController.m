//
//  WCNavigationController.m
//  WCCommon
//
//  Created by ASHOKA on 15/4/13.
//  Copyright (c) 2015年 ASHOKA. All rights reserved.
//

#import "WCNavigationController.h"

@interface WCNavigationController ()

@end

@implementation WCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.qmui_backgroundView.tag = 1024;
}

@end
