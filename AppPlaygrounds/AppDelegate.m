//
//  AppDelegate.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "AppDelegate.h"
#import <WCCommon/WCCommon.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [QDThemeManager.sharedInstance setupTheme];
    return YES;
}


#pragma mark - UISceneSession lifecycle



@end
