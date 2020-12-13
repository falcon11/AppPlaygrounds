//
//  ViewController.m
//  {{Project}}
//
//  Created by ashoka on 2020/12/13.
//

#import "ViewController.h"
#import "CTMediator+__Project__.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIViewController *vc = [CTMediator.sharedInstance __Project___viewController];
    WCNavigationController *nav = [[WCNavigationController alloc] initWithRootViewController:vc];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:NO completion:nil];
}


@end
