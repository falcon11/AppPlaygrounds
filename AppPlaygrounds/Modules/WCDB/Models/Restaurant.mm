//
//  Restaurant.mm
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/23.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "Restaurant+WCTTableCoding.h"
#import "Restaurant.h"
#import <WCDB/WCDB.h>

@implementation Restaurant

WCDB_IMPLEMENTATION(Restaurant)
WCDB_SYNTHESIZE(Restaurant, rid)
WCDB_SYNTHESIZE(Restaurant, aid)
WCDB_SYNTHESIZE(Restaurant, name)
WCDB_SYNTHESIZE(Restaurant, summary)

WCDB_PRIMARY(Restaurant, rid)
  
@end
