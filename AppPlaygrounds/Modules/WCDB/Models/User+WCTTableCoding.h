//
//  User+WCTTableCoding.h
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "User.h"
#import <WCDB/WCDB.h>

@interface User (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(uid)
WCDB_PROPERTY(openid)
WCDB_PROPERTY(username)
WCDB_PROPERTY(phone)
WCDB_PROPERTY(email)
WCDB_PROPERTY(sex)
WCDB_PROPERTY(avator)
WCDB_PROPERTY(password)

@end
