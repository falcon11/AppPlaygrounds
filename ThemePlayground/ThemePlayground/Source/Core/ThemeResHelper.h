//
//  ThemeResHelper.h
//  ThemePlayground
//
//  Created by ashoka on 2020/12/13.
//

#import "WCBaseResHelper.h"

NS_ASSUME_NONNULL_BEGIN

#define ThemeImageMake(x) [ThemeResHelper imageNamed:x]
#define ThemeLocalization(x) [ThemeResHelper localization:x]

@interface ThemeResHelper : WCBaseResHelper

@end

NS_ASSUME_NONNULL_END
