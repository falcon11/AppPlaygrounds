//
//  ViewController.m
//  ThemePlayground
//
//  Created by ashoka on 2020/12/11.
//

#import "ViewController.h"
#import "CTMediator+Theme.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIViewController *vc = [CTMediator.sharedInstance Theme_viewController];
    WCNavigationController *nav = [[WCNavigationController alloc] initWithRootViewController:vc];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:NO completion:nil];
}

@end
