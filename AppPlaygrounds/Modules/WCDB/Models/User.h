//
//  User.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : Base

@property (nonatomic, copy) NSString *uid;
@property (nonatomic, copy) NSString *openid;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, assign) int sex;
@property (nonatomic, copy) NSString *avator;
@property (nonatomic, copy) NSString *password;

@end

NS_ASSUME_NONNULL_END
