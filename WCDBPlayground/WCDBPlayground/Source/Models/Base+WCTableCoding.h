//
//  Base+WCTableCoding.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "Base.h"
#import <WCDB/WCDB.h>

NS_ASSUME_NONNULL_BEGIN

@interface Base (WCTableCoding) <WCTTableCoding>

WCDB_PROPERTY(status)
WCDB_PROPERTY(createTime)
WCDB_PROPERTY(updateTime)

@end

NS_ASSUME_NONNULL_END
