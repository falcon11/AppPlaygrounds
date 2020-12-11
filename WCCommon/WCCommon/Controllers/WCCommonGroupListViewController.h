//
//  WCCommonGroupListViewController.h
//  WCCommon
//
//  Created by ASHOKA on 2016/10/10.
//  Copyright © 2016年 ASHOKA. All rights reserved.
//

#import <QMUIKit/QMUIKit.h>
#import "WCCommonTableViewController.h"

@interface WCCommonGroupListViewController : WCCommonTableViewController

@property(nonatomic, strong) QMUIOrderedDictionary *dataSource;

- (NSString *)titleForSection:(NSInteger)section;
- (NSString *)keyNameAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface WCCommonGroupListViewController (UISubclassingHooks)

// 子类继承，可以不调 super
- (void)initDataSource;
- (void)didSelectCellWithTitle:(NSString *)title;

@end
