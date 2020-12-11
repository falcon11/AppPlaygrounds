//
//  ViewController.m
//  runtime
//
//  Created by ashoka on 2020/11/30.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+Runtime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Playground";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"open run time module" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openRuntimeModule) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    [self.view addSubview:button];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [[button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
    [[button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
}

- (void)openRuntimeModule {
    UIViewController *vc = [CTMediator.sharedInstance Runtime_viewController];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
