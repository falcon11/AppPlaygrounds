//
//  WCCommonListViewController.h
//  WCCommon
//
//  Created by ASHOKA on 15/9/15.
//  Copyright (c) 2015年 ASHOKA. All rights reserved.
//

#import "WCCommonTableViewController.h"

/**
 对于那种简单地展示一个列表，点击后跳去别的界面的场景，不需要继承，直接初始化后赋值 @c dataSource 、@c dataSourceWithDetailText ，并在 didSelectTitleBlock 里处理每一行的点击事件即可。
 */
@interface WCCommonListViewController : WCCommonTableViewController

@property(nonatomic, strong) NSArray<NSString *> *dataSource;
@property(nonatomic, strong) QMUIOrderedDictionary<NSString *, NSString *> *dataSourceWithDetailText;
@property(nonatomic, copy) void (^didSelectTitleBlock)(NSString *title);

@end

@interface WCCommonListViewController (UISubclassingHooks)

// 子类继承，可以不调super
- (void)initDataSource;
- (void)didSelectCellWithTitle:(NSString *)title;

@end
