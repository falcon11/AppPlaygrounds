//
//  Restaurant.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base.h"

NS_ASSUME_NONNULL_BEGIN

@interface Restaurant : Base

// id(主键)，aid（外键，表示address），name,summary,main_image,month_count,total_count,view_count,comment_count

// 餐馆id
@property (nonatomic, copy) NSString *rid;
// 地址id
@property (nonatomic, copy) NSString *aid;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *image;



@end

NS_ASSUME_NONNULL_END
