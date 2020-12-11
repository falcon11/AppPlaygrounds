//
//  Dish.mm
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/23.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Dish+WCTTableCoding.h"
#import "Dish.h"
#import <WCDB/WCDB.h>

@implementation Dish

WCDB_IMPLEMENTATION(Dish)
WCDB_SYNTHESIZE(Dish, did)
WCDB_SYNTHESIZE(Dish, name)
WCDB_SYNTHESIZE(Dish, rid)
WCDB_SYNTHESIZE(Dish, price)
WCDB_SYNTHESIZE(Dish, summary)
WCDB_SYNTHESIZE(Dish, stock)
WCDB_SYNTHESIZE(Dish, tag)
WCDB_SYNTHESIZE(Dish, image)

WCDB_PRIMARY(Dish, did)
  
@end
