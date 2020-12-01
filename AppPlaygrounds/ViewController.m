//
//  ViewController.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "ViewController.h"
#import <Runtime_Category/CTMediator+Runtime.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSources;

@end

@implementation ViewController

- (NSArray *)dataSources {
    if (!_dataSources) {
        _dataSources = @[
            @{
                @"name": @"WCDB",
                @"selctor": NSStringFromSelector(@selector(pushPage:)),
                @"params": @"WCDBViewController"
            },
            @{
                @"name": @"Runtime",
                @"selctor": NSStringFromSelector(@selector(pushVC:)),
                @"params": [CTMediator.sharedInstance Runtime_viewController],
            },
        ];
    }
    return _dataSources;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

- (void)pushPage:(NSString *)page {
    UIViewController *pageVC = [[NSClassFromString(page) alloc] init];
    [self.navigationController pushViewController:pageVC animated:YES];
}

- (void)pushVC:(UIViewController *)vc {
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self dataSources].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const cellID = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [self dataSources][indexPath.row][@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SEL selector = NSSelectorFromString([self dataSources][indexPath.row][@"selctor"]);
    id params = [self dataSources][indexPath.row][@"params"];
    [self performSelector:selector withObject:params];
}

@end
