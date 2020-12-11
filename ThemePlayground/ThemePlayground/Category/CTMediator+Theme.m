//
//  CTMediator+Theme.m
//  ThemePlayground
//
//  Created by ashoka on 2020/12/11.
//

#import "CTMediator+Theme.h"

@implementation CTMediator (Theme)

- (UIViewController *)Theme_viewController {
    return [self performTarget:@"Theme" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
