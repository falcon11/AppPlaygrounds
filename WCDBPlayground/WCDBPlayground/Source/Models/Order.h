//
//  Order.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "Base.h"

NS_ASSUME_NONNULL_BEGIN

@interface Order : Base

@property (nonatomic, copy) NSString *oid;
@property (nonatomic, copy) NSString *orderSn;
@property (nonatomic, copy) NSString *uid;
@property (nonatomic, copy) NSString *totalPrice;
@property (nonatomic, assign) float expressPrice;
@property (nonatomic, assign) int expressStatus;
@property (nonatomic, assign) int commentStatus;
@property (nonatomic, assign) NSString *aid;
@property (nonatomic, strong) NSDate *payTime;

@end

NS_ASSUME_NONNULL_END
