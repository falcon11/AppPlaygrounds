//
//  WCDBViewController.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "WCDBViewController.h"
#import "DatabaseManager.h"

@interface WCDBViewController ()

@end

@implementation WCDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"WCDB";
    [DatabaseManager.sharedInstance prepare];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
