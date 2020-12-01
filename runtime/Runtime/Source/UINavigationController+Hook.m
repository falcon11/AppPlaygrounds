//
//  UINavigationController+Hook.m
//  Runtime
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "UINavigationController+Hook.h"
#import <objc/runtime.h>

@implementation UINavigationController (Hook)

+(void)load {
    [self swizzlePush];
    [self swizzlePop];
}

- (void)my_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"push page: %@", NSStringFromClass(viewController.class));
    [self my_pushViewController:viewController animated:animated];
}

- (void)my_popViewControllerAnimated:(BOOL)animated {
    NSLog(@"pop page: %@", NSStringFromClass(self.topViewController.class));
    [self my_popViewControllerAnimated:animated];
}

+ (void)hijackSelector:(SEL)originalSelector withSelector:(SEL)newSelector {
    Method originalMethod = class_getInstanceMethod(self, originalSelector);
    Method newMethod = class_getInstanceMethod(self, newSelector);
    if (class_addMethod(self, originalSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod))) {
        class_replaceMethod(self, newSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, newMethod);
    }
}

+ (void)swizzlePush {
    [self hijackSelector:@selector(pushViewController:animated:) withSelector:@selector(my_pushViewController:animated:)];
}

+ (void)swizzlePop {
    [self hijackSelector:@selector(popViewControllerAnimated:) withSelector:@selector(my_popViewControllerAnimated:)];
}

@end
