//
//  WCCommonTableViewController.m
//  WCCommon
//
//  Created by ASHOKA on 15/4/13.
//  Copyright (c) 2015年 ASHOKA. All rights reserved.
//

#import "WCCommonTableViewController.h"
#import "WCCommonUI.h"

@implementation WCCommonTableViewController

- (void)initTableView {
    [super initTableView];
    if (IsUITest) {
        self.tableView.accessibilityLabel = [NSString stringWithFormat:@"viewController-%@", self.title];
    }
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    if (IsUITest && self.isViewLoaded) {
        self.tableView.accessibilityLabel = [NSString stringWithFormat:@"viewController-%@", self.title];
    }
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable {
    return YES;
}

- (void)qmui_themeDidChangeByManager:(QMUIThemeManager *)manager identifier:(__kindof NSObject<NSCopying> *)identifier theme:(__kindof NSObject *)theme {
    [super qmui_themeDidChangeByManager:manager identifier:identifier theme:theme];
    [self.tableView reloadData];
}

@end
