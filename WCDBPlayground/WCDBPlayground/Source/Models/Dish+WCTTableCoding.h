//
//  Dish+WCTTableCoding.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/23.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Dish.h"
#import <WCDB/WCDB.h>

@interface Dish (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(did)
WCDB_PROPERTY(name)
WCDB_PROPERTY(rid)
WCDB_PROPERTY(price)
WCDB_PROPERTY(summary)
WCDB_PROPERTY(stock)
WCDB_PROPERTY(tag)
WCDB_PROPERTY(image)

@end
