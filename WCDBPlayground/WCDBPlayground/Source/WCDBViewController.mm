//
//  WCDBViewController.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/11/20.
//  Copyright © 2020 iWhaleCloud. All rights reserved.
//

#import "WCDBViewController.h"
#import "DatabaseManager.h"
#import "User.h"
#import "User+WCTTableCoding.h"
#import "Dish.h"
#import "Restaurant.h"

@interface WCDBViewController ()<QMUITableViewDataSource, QMUITableViewDelegate>

@property (nonatomic, strong) QMUITableView *tableView;

@end

@implementation WCDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"WCDB";
    [DatabaseManager.sharedInstance prepare];
    
    self.tableView = [[QMUITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

#pragma mark - TableView

- (NSArray *)functions {
    return @[
        @{
            @"name": @"add users",
            @"cmd": NSStringFromSelector(@selector(addUsers)),
        },
        @{
            @"name": @"add dishes",
            @"cmd": NSStringFromSelector(@selector(addDishes))
        },
        @{
            @"name": @"add restaurant",
            @"cmd": NSStringFromSelector(@selector(addRestaurant))
        },
        @{
            @"name": @"dish bind restaurant",
            @"cmd": NSStringFromSelector(@selector(dishBindRestaurant))
        },
        @{
            @"name": @"delete all data",
            @"cmd": NSStringFromSelector(@selector(deleteAllData))
        },
    ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self functions].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[QMUITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    NSDictionary *func = [self functions][indexPath.row];
    cell.textLabel.text = func[@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *row = [self functions][indexPath.row];
    SEL selector = NSSelectorFromString(row[@"cmd"]);
    [self performSelector:selector];
}

#pragma mark - selectors

- (void)addUsers {
    NSMutableArray *userToAdd = [NSMutableArray new];
    for (int i = 10000; i < 20000; i += 1) {
        User *userA = [User new];
        userA.uid = [NSString stringWithFormat:@"0027%06d", i + 1];
        userA.username = @"A";
        userA.phone = [NSString stringWithFormat:@"13000%06d", i + 1];
        userA.sex = i % 2 == 0 ? 1 : 0;
        [userToAdd addObject:userA];
    }
    [DatabaseManager.sharedInstance.database insertOrReplaceObjects:userToAdd into:NSStringFromClass(User.class)];
    
//    NSArray *users = [DatabaseManager.sharedInstance.database getAllObjectsOfClass:User.class fromTable:NSStringFromClass(User.class)];
//    NSLog(@"users: %@", users);
}

- (void)addDishes {
    NSMutableArray *dishes = [NSMutableArray new];
    for (int i = 0; i < 100; i += 1) {
        Dish *dish = [Dish new];
        dish.did = [NSString stringWithFormat:@"%04d", i + 1];
        dish.name = [NSString stringWithFormat:@"Dish-%d", i];
        dish.price = 2000;
        dish.summary = @"";
        dish.stock = 100;
        [dishes addObject:dish];
    }
    [RSTRTDB insertOrReplaceObjects:dishes into:NSStringFromClass(Dish.class)];
    
}

- (void)addRestaurant {
    NSMutableArray *restaurants = [NSMutableArray new];
    for (int i = 0; i < 30; i += 1) {
        Restaurant *rst = [Restaurant new];
        rst.rid = [NSString stringWithFormat:@"%04d", i];
        rst.name = [NSString stringWithFormat:@"Restaurant-%d", i + 1];
        rst.summary = @"";
        [restaurants addObject:rst];
    }
    [RSTRTDB insertOrReplaceObjects:restaurants into:NSStringFromClass(Restaurant.class)];
}

- (void)dishBindRestaurant {
    NSArray *dishes = [RSTRTDB getAllObjectsOfClass:[Dish class] fromTable:NSStringFromClass([Dish class])];
    NSArray *restaurants = [RSTRTDB getAllObjectsOfClass:[Restaurant class] fromTable:NSStringFromClass([Restaurant class])];
    for (int i = 0; i < dishes.count; i += 1) {
        Dish *dish = dishes[i];
        Restaurant *rst = restaurants[i % 30];
        dish.rid = rst.rid;
    }
    [RSTRTDB insertOrReplaceObjects:dishes into:NSStringFromClass([Dish class])];
}

- (void)deleteAllData {
    NSArray *clses = @[
        User.class,
        Dish.class,
        Restaurant.class
    ];
    for (Class cls in clses) {
        [RSTRTDB deleteAllObjectsFromTable:NSStringFromClass(cls.class)];
    }
}

@end
