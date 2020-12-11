//
//  AppDelegate.m
//  WCDBPlayground
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "AppDelegate.h"
#import "CTMediator+WCDB.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIViewController *vc = [CTMediator.sharedInstance WCDB_viewController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
