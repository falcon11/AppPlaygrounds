//
//  User.mm
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "User+WCTTableCoding.h"
#import "User.h"
#import <WCDB/WCDB.h>

@implementation User

WCDB_IMPLEMENTATION(User)
WCDB_SYNTHESIZE(User, uid)
WCDB_SYNTHESIZE(User, openid)
WCDB_SYNTHESIZE(User, username)
WCDB_SYNTHESIZE(User, phone)
WCDB_SYNTHESIZE(User, email)
WCDB_SYNTHESIZE_DEFAULT(User, sex, 1)
WCDB_PRIMARY(User, uid)
  
@end
