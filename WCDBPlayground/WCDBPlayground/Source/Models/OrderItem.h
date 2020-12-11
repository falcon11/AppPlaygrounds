//
//  OrderItem.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Base.h"

NS_ASSUME_NONNULL_BEGIN

/// 购买订单中单个菜肴
@interface OrderItem : Base

@property (nonatomic, copy) NSString *iid;
@property (nonatomic, copy) NSString *oid;
@property (nonatomic, copy) NSString *did;
@property (nonatomic, assign) int quantity;

@end

NS_ASSUME_NONNULL_END
