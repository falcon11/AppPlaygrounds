//
//  Target_Theme.m
//  ThemePlayground
//
//  Created by ashoka on 2020/12/11.
//

#import "Target_Theme.h"
#import "ThemeSettingViewController.h"

@implementation Target_Theme

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    return ThemeSettingViewController.new;
}

@end
