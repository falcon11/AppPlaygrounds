//
//  QDThemeManager.m
//  qmuidemo
//
//  Created by QMUI Team on 2017/5/9.
//  Copyright © 2017年 QMUI Team. All rights reserved.
//

#import "QDThemeManager.h"
#import "WCCommonUI.h"
#import <QMUIKit/QMUIKit.h>
#import "QMUIConfigurationTemplate.h"
#import "QMUIConfigurationTemplateDark.h"
#import "QMUIConfigurationTemplateGrass.h"
#import "QMUIConfigurationTemplateGrapefruit.h"
#import "QMUIConfigurationTemplatePinkRose.h"

@interface QDThemeManager ()

@property(nonatomic, strong) UIColor *qd_backgroundColor;
@property(nonatomic, strong) UIColor *qd_backgroundColorLighten;
@property(nonatomic, strong) UIColor *qd_backgroundColorHighlighted;
@property(nonatomic, strong) UIColor *qd_tintColor;
@property(nonatomic, strong) UIColor *qd_titleTextColor;
@property(nonatomic, strong) UIColor *qd_mainTextColor;
@property(nonatomic, strong) UIColor *qd_descriptionTextColor;
@property(nonatomic, strong) UIColor *qd_placeholderColor;
@property(nonatomic, strong) UIColor *qd_codeColor;
@property(nonatomic, strong) UIColor *qd_separatorColor;
@property(nonatomic, strong) UIColor *qd_gridItemTintColor;

@property(nonatomic, strong) UIImage *qd_searchBarTextFieldBackgroundImage;
@property(nonatomic, strong) UIImage *qd_searchBarBackgroundImage;

@property(nonatomic, strong) UIVisualEffect *qd_standardBlueEffect;

@property(class, nonatomic, strong, readonly) QDThemeManager *sharedInstance;
@end

@implementation QDThemeManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static QDThemeManager *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

- (instancetype)init {
    if (self = [super init]) {
        self.qd_backgroundColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeBackgroundColor;
        }];
        self.qd_backgroundColorLighten = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, NSString * _Nullable identifier, NSObject<QDThemeProtocol> * _Nullable theme) {
            return theme.themeBackgroundColorLighten;
        }];
        self.qd_backgroundColorHighlighted = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeBackgroundColorHighlighted;
        }];
        self.qd_tintColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeTintColor;
        }];
        self.qd_titleTextColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeTitleTextColor;
        }];
        self.qd_mainTextColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeMainTextColor;
        }];
        self.qd_descriptionTextColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeDescriptionTextColor;
        }];
        self.qd_placeholderColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themePlaceholderColor;
        }];
        self.qd_codeColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeCodeColor;
        }];
        self.qd_separatorColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, NSObject<QDThemeProtocol> *theme) {
            return theme.themeSeparatorColor;
        }];
        self.qd_gridItemTintColor = [UIColor qmui_colorWithThemeProvider:^UIColor * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, NSString * _Nullable identifier, NSObject<QDThemeProtocol> * _Nullable theme) {
            return theme.themeGridItemTintColor;
        }];
        
        self.qd_searchBarTextFieldBackgroundImage = [UIImage qmui_imageWithThemeProvider:^UIImage * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, __kindof NSObject<QDThemeProtocol> * _Nullable theme) {
            return [UISearchBar qmui_generateTextFieldBackgroundImageWithColor:theme.themeBackgroundColorHighlighted];
        }];
        self.qd_searchBarBackgroundImage = [UIImage qmui_imageWithThemeProvider:^UIImage * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, __kindof NSObject<NSCopying> * _Nullable identifier, __kindof NSObject<QDThemeProtocol> * _Nullable theme) {
            return [UISearchBar qmui_generateBackgroundImageWithColor:theme.themeBackgroundColor borderColor:nil];
        }];
        
        self.qd_standardBlueEffect = [UIVisualEffect qmui_effectWithThemeProvider:^UIVisualEffect * _Nonnull(__kindof QMUIThemeManager * _Nonnull manager, NSString * _Nullable identifier, NSObject<QDThemeProtocol> * _Nullable theme) {
            return [UIBlurEffect effectWithStyle:[identifier isEqualToString:WCThemeIdentifierDark] ? UIBlurEffectStyleDark : UIBlurEffectStyleLight];
        }];
    }
    return self;
}

+ (NSObject<QDThemeProtocol> *)currentTheme {
    return QMUIThemeManagerCenter.defaultThemeManager.currentTheme;
}

- (void)setupTheme {
    // 1. 先注册主题监听，在回调里将主题持久化存储，避免启动过程中主题发生变化时读取到错误的值
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleThemeDidChangeNotification:) name:QMUIThemeDidChangeNotification object:nil];
    
    // 2. 然后设置主题的生成器
    QMUIThemeManagerCenter.defaultThemeManager.themeGenerator = ^__kindof NSObject * _Nonnull(NSString * _Nonnull identifier) {
        if ([identifier isEqualToString:WCThemeIdentifierDefault]) return QMUIConfigurationTemplate.new;
        if ([identifier isEqualToString:WCThemeIdentifierGrapefruit]) return QMUIConfigurationTemplateGrapefruit.new;
        if ([identifier isEqualToString:WCThemeIdentifierGrass]) return QMUIConfigurationTemplateGrass.new;
        if ([identifier isEqualToString:WCThemeIdentifierPinkRose]) return QMUIConfigurationTemplatePinkRose.new;
        if ([identifier isEqualToString:WCThemeIdentifierDark]) return QMUIConfigurationTemplateDark.new;
        return nil;
    };
    
//    添加内置主题
    NSArray *themes = @[
        QMUIConfigurationTemplate.class,
        QMUIConfigurationTemplateGrapefruit.class,
        QMUIConfigurationTemplateGrass.class,
        QMUIConfigurationTemplatePinkRose.class,
        QMUIConfigurationTemplateDark.class,
    ];
    [themes enumerateObjectsUsingBlock:^(Class class, NSUInteger idx, BOOL * _Nonnull stop) {
        NSObject<QDThemeProtocol> *theme = [[class alloc] init];
        if ([QMUIThemeManagerCenter.defaultThemeManager themeForIdentifier:theme.themeName] == nil) {
            [QMUIThemeManagerCenter.defaultThemeManager addThemeIdentifier:theme.themeName theme:theme];
        }
    }];
    
    // 3. 再针对 iOS 13 开启自动响应系统的 Dark Mode 切换
    // 如果不需要这个功能，则不需要这一段代码
    if (@available(iOS 13.0, *)) {
        if (QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier) {// 做这个 if(currentThemeIdentifier) 的保护只是为了避免 QD 里的配置表没启动时，没人为 currentTheme/currentThemeIdentifier 赋值，导致后续的逻辑会 crash，业务项目里理论上不会有这种情况出现，所以可以省略这个 if，直接写下面的代码就行了
            
            QMUIThemeManagerCenter.defaultThemeManager.identifierForTrait = ^__kindof NSObject<NSCopying> * _Nonnull(UITraitCollection * _Nonnull trait) {
                // 1. 如果当前系统切换到 Dark Mode，则返回 App 在 Dark Mode 下的主题
                if (trait.userInterfaceStyle == UIUserInterfaceStyleDark) {
                    return WCThemeIdentifierDark;
                }
                
                // 2. 如果没有命中1，说明此时系统是 Light，则返回 App 在 Light 下的主题即可，这里不直接返回 Default，而是先做一些复杂判断，是因为 QMUI Demo 非深色模式的主题有好几个，而我们希望不管之前选择的是 Default、Grapefruit 还是 PinkRose，只要从 Dark 切换为非 Dark，都强制改为 Default。
                
                // 换句话说，如果业务项目只有 Light/Dark 两套主题，则按下方被注释掉的代码一样直接返回 Light 下的主题即可。
//                return QDThemeIdentifierDefault;
                
                if ([QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier isEqual:WCThemeIdentifierDark]) {
                    return WCThemeIdentifierDefault;
                }
                return QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier;
            };
            QMUIThemeManagerCenter.defaultThemeManager.respondsSystemStyleAutomatically = self.respondsSystemStyle;
        }
    }
}

- (BOOL)respondsSystemStyle {
    return [NSUserDefaults.standardUserDefaults boolForKey:WCResponseSystemStyleIdendifier];
}

- (void)setRespondsSystemStyle:(BOOL)respondsSystemStyle {
    [NSUserDefaults.standardUserDefaults setBool:respondsSystemStyle forKey:WCResponseSystemStyleIdendifier];
    QMUIThemeManagerCenter.defaultThemeManager.respondsSystemStyleAutomatically = respondsSystemStyle;
}

- (void)handleThemeDidChangeNotification:(NSNotification *)notification {
    
    QMUIThemeManager *manager = notification.object;
    if (![manager.name isEqual:QMUIThemeManagerNameDefault]) return;
    
    [[NSUserDefaults standardUserDefaults] setObject:manager.currentThemeIdentifier forKey:WCSelectedThemeIdentifier];
    
    [QDThemeManager.currentTheme applyConfigurationTemplate];
    
}

@end

@implementation UIColor (QDTheme)

+ (instancetype)qd_sharedInstance {
    static dispatch_once_t onceToken;
    static UIColor *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (UIColor *)qd_backgroundColor {
    return QDThemeManager.sharedInstance.qd_backgroundColor;
}

+ (UIColor *)qd_backgroundColorLighten {
    return QDThemeManager.sharedInstance.qd_backgroundColorLighten;
}

+ (UIColor *)qd_backgroundColorHighlighted {
    return QDThemeManager.sharedInstance.qd_backgroundColorHighlighted;
}

+ (UIColor *)qd_tintColor {
    return QDThemeManager.sharedInstance.qd_tintColor;
}

+ (UIColor *)qd_titleTextColor {
    return QDThemeManager.sharedInstance.qd_titleTextColor;
}

+ (UIColor *)qd_mainTextColor {
    return QDThemeManager.sharedInstance.qd_mainTextColor;
}

+ (UIColor *)qd_descriptionTextColor {
    return QDThemeManager.sharedInstance.qd_descriptionTextColor;
}

+ (UIColor *)qd_placeholderColor {
    return QDThemeManager.sharedInstance.qd_placeholderColor;
}

+ (UIColor *)qd_codeColor {
    return QDThemeManager.sharedInstance.qd_codeColor;
}

+ (UIColor *)qd_separatorColor {
    return QDThemeManager.sharedInstance.qd_separatorColor;
}

+ (UIColor *)qd_gridItemTintColor {
    return QDThemeManager.sharedInstance.qd_gridItemTintColor;
}

@end

@implementation UIImage (QDTheme)

+ (UIImage *)qd_searchBarTextFieldBackgroundImage {
    return QDThemeManager.sharedInstance.qd_searchBarTextFieldBackgroundImage;
}

+ (UIImage *)qd_searchBarBackgroundImage {
    return QDThemeManager.sharedInstance.qd_searchBarBackgroundImage;
}

@end

@implementation UIVisualEffect (QDTheme)

+ (UIVisualEffect *)qd_standardBlurEffect {
    return QDThemeManager.sharedInstance.qd_standardBlueEffect;
}

@end
