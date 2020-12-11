//
//  Restaurant+WCTTableCoding.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/23.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "Restaurant.h"
#import <WCDB/WCDB.h>

@interface Restaurant (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(rid)
WCDB_PROPERTY(aid)
WCDB_PROPERTY(name)
WCDB_PROPERTY(summary)
WCDB_PROPERTY(image)

@end
