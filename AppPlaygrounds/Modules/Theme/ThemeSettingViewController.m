//
//  ThemeSettingViewController.m
//  AppPlaygrounds
//
//  Created by ashoka on 2020/12/10.
//  Copyright © 2020 ASHOKA. All rights reserved.
//

#import "ThemeSettingViewController.h"
#import <QMUIKit/QMUIKit.h>
#import <WCCommon/WCCommon.h>

@interface QDThemeButton : QMUIFillButton

@property(nonatomic, strong) UIColor *themeColor;
@property(nonatomic, copy) NSString *themeName;
@end

@interface ThemeSettingViewController ()

@property (nonatomic, strong) NSArray *themes;
@property (nonatomic, strong) QMUIFloatLayoutView *buttonsContainer;
@property (nonatomic, strong) NSMutableArray *themeButtons;
@property (nonatomic, strong) UISwitch *switchView;

@end

@implementation ThemeSettingViewController

- (void)didInitialize {
    [super didInitialize];
    self.themes = @[
        WCThemeIdentifierDefault,
        WCThemeIdentifierDark,
        WCThemeIdentifierGrass,
        WCThemeIdentifierGrapefruit,
        WCThemeIdentifierPinkRose,
    ];
    self.themeButtons = NSMutableArray.new;
}

- (void)initSubviews {
    [super initSubviews];
    self.buttonsContainer = [[QMUIFloatLayoutView alloc] init];
    [self.view addSubview:self.buttonsContainer];
    
    [self.themes enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSObject<QDThemeProtocol> *theme = [QMUIThemeManagerCenter.defaultThemeManager themeForIdentifier:obj];
            QDThemeButton *button = [[QDThemeButton alloc] initWithFillColor:theme.themeTintColor titleTextColor:UIColorWhite];
        [button setTitle:theme.themeName forState:UIControlStateNormal];
        button.themeName = theme.themeName;
        [button addTarget:self action:@selector(handleThemeButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        [self.buttonsContainer addSubview:button];
        [self.themeButtons addObject:button];
    }];
    
    self.switchView = [[UISwitch alloc] init];
    if (@available(iOS 13.0, *)) {
        self.switchView.enabled = YES;
        self.switchView.on = QDThemeManager.sharedInstance.respondsSystemStyle;
        [self.switchView addTarget:self action:@selector(handleRespondSystemStyleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:self.switchView];
    } else {
        self.switchView.enabled = NO;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    UIEdgeInsets padding = UIEdgeInsetsMake(24 + self.view.qmui_safeAreaInsets.top, 24 + self.view.qmui_safeAreaInsets.left, 24 + self.view.qmui_safeAreaInsets.bottom, 24 + self.view.qmui_safeAreaInsets.right);
    
    self.buttonsContainer.itemMargins = UIEdgeInsetsMake(0, 0, 8, 0);
    
    CGFloat buttonWidth = self.view.qmui_width - padding.left - padding.right;
    buttonWidth = floor(buttonWidth);
    
    [self.themeButtons enumerateObjectsUsingBlock:^(QDThemeButton *button, NSUInteger idx, BOOL * _Nonnull stop) {
        button.frame = CGRectSetSize(button.frame, CGSizeMake(buttonWidth, 32));
    }];
    
    self.buttonsContainer.frame = CGRectMake(padding.left, padding.top, self.view.qmui_width - padding.left - padding.right, QMUIViewSelfSizingHeight);
    
    self.switchView.qmui_left = padding.left;
    self.switchView.qmui_top = self.buttonsContainer.qmui_bottom + 24;
}

- (void)handleThemeButtonEvent:(QDThemeButton *)themeButton {
    QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier = themeButton.currentTitle;
}

- (void)handleRespondSystemStyleSwitchEvent:(UISwitch *)switchView {
    QDThemeManager.sharedInstance.respondsSystemStyle = switchView.on;
}

@end


@implementation QDThemeButton

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        self.backgroundColor = self.fillColor;
        self.layer.borderWidth = 0;
        [self setTitleColor:UIColorWhite forState:UIControlStateNormal];
        self.titleLabel.font = UIFontBoldMake(self.titleLabel.font.pointSize);
    } else {
        self.backgroundColor = nil;
        self.layer.borderColor = self.fillColor.CGColor;
        self.layer.borderWidth = 1;
        [self setTitleColor:self.fillColor forState:UIControlStateNormal];
        self.titleLabel.font = UIFontMake(self.titleLabel.font.pointSize);
    }
    
    if ([self.currentTitle isEqualToString:WCThemeIdentifierDark] && selected) {
        self.backgroundColor = [UIColorWhite colorWithAlphaComponent:.7];
    }
}

- (CGSize)sizeThatFits:(CGSize)size {
    return self.frame.size;
}

@end
