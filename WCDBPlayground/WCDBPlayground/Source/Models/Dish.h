//
//  Dish.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base.h"

NS_ASSUME_NONNULL_BEGIN

/// 菜品
@interface Dish : Base

@property (nonatomic, copy) NSString *did;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *rid;
@property (nonatomic, assign) float price;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, assign) int stock;
@property (nonatomic, copy) NSString *tag;
@property (nonatomic, copy) NSString *image;

@end

NS_ASSUME_NONNULL_END
