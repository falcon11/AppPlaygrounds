//
//  {{Project}}ViewController.m
//  {{Project}}
//
//  Created by ashoka on 2020/12/13.
//

#import "{{Project}}ViewController.h"
#import "{{Project}}ResHelper.h"

@interface __Project__ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation __Project__ViewController

- (void)initSubviews {
    [super initSubviews];
    
    self.imageView = [[UIImageView alloc] initWithImage:{{Project}}ImageMake(@"wallpaper")];
    [self.view addSubview:self.imageView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.imageView.frame = self.view.bounds;
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
