//
//  ViewControllerA.m
//  Runtime
//
//  Created by ashoka on 2020/12/1.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "ViewControllerA.h"
#import "ViewControllerB.h"

@interface ViewControllerA ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"A";
    self.view.backgroundColor = UIColor.systemBackgroundColor;
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.button setTitle:@"push B" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(handleButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.button sizeToFit];
    [self.view addSubview:self.button];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
}

- (void)handleButtonClick:(UIButton *)button {
    ViewControllerB *vcB = [[ViewControllerB alloc] init];
    [self.navigationController pushViewController:vcB animated:YES];
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
