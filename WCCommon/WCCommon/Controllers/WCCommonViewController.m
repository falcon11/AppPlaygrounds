//
//  WCCommonViewController.m
//  WCCommon
//
//  Created by ASHOKA on 15/4/13.
//  Copyright (c) 2015年 ASHOKA. All rights reserved.
//

#import "WCCommonViewController.h"
#import "WCCommonUI.h"

@implementation WCCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (IsUITest) {
        self.view.accessibilityLabel = [NSString stringWithFormat:@"viewController-%@", self.title];
    }
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    if (IsUITest && self.isViewLoaded) {
        self.view.accessibilityLabel = [NSString stringWithFormat:@"viewController-%@", self.title];
    }
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable {
    return YES;
}

@end
