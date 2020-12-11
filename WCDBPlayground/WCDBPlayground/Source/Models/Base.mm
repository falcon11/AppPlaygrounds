//
//  Base.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Base.h"
#import <WCDB/WCDB.h>

@implementation Base

WCDB_IMPLEMENTATION(Base)
WCDB_SYNTHESIZE_DEFAULT(Base, status, 1)
WCDB_SYNTHESIZE_DEFAULT(Base, createTime, WCTDefaultTypeCurrentDate)
WCDB_SYNTHESIZE_DEFAULT(Base, updateTime, WCTDefaultTypeCurrentDate)

@end
