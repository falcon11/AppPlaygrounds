//
//  WCCommonGridViewController.h
//  WCCommon
//
//  Created by ASHOKA on 2016/10/10.
//  Copyright © 2016年 ASHOKA. All rights reserved.
//

#import "WCCommonViewController.h"

@interface WCCommonGridViewController : WCCommonViewController

@property(nonatomic, strong) QMUIOrderedDictionary<NSString *, UIImage *> *dataSource;
@property(nonatomic, strong, readonly) UIScrollView *scrollView;
@property(nonatomic, strong, readonly) QMUIGridView *gridView;

@end

@interface WCCommonGridViewController (UISubclassingHooks)

// 子类继承，可以不调super
- (void)initDataSource;
- (void)didSelectCellWithTitle:(NSString *)title;
@end
