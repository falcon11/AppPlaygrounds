//
//  WCBaseResHelper.m
//  WCCommon
//
//  Created by ashoka on 2020/12/13.
//

#import "WCBaseResHelper.h"

@implementation WCBaseResHelper

+ (NSString *)bundleName {
    return nil;
}

+ (NSBundle *)mainBundle {
    static NSBundle *resourceBundle = nil;
    if (!resourceBundle) {
        NSBundle *mainBundle = [NSBundle bundleForClass:self];
        if ([self bundleName]) {
            NSString *resourcePath = [mainBundle pathForResource:self.bundleName ofType:@"bundle"];
            resourceBundle = [NSBundle bundleWithPath:resourcePath] ?: mainBundle;
        } else {
            resourceBundle = mainBundle;
        }
    }
    return resourceBundle;
}

+ (UIImage *)imageNamed:(NSString *)name {
    return [UIImage imageNamed:name inBundle:[self mainBundle] compatibleWithTraitCollection:nil];
}

+ (NSString *)localization:(NSString *)key {
    return [self localization:key value:nil];
}

+ (NSString *)localization:(NSString *)key value:(NSString *)value {
    NSBundle *bundle = [self mainBundle];
    return [bundle localizedStringForKey:key value:value table:nil];
}

@end
