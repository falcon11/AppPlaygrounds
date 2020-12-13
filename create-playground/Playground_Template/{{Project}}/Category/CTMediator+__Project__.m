//
//  CTMediator+__Project__.m
//  {{Project}}
//
//  Created by ashoka on 2020/12/13.
//

#import "CTMediator+__Project__.h"

@implementation CTMediator (__Project__)

- (UIViewController *)__Project___viewController {
    return [self performTarget:@"{{Project}}" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
