//
//  Administrator.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface Administrator : User

// 饭店id
@property (nonatomic, copy) NSString *rid;

@end

NS_ASSUME_NONNULL_END
