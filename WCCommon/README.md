# WCCommon

这个库是项目的基础库，包含皮肤管理，基类

## 怎么配置多套皮肤

`QDThemeProtocol` 定义了项目中常用的关键外观属性，所有主题都要实现该协议。
`QMUIConfigurationTemplate` 是默认的皮肤，其他自定义皮肤继承该类，然后做些自定义。自定义类要以 `QMUIConfigurationTemplate` 作为开头，可参考 `Configuration` 目录下其他皮肤。
`QDThemeManager` 对常用外观属性进行了封装，方便使用。`setupTheme` 对所有主题进行注册。

### 初始化

在 `AppDelegate` 中初始化

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [QDThemeManager.sharedInstance setupTheme];
    return YES;
}
```

### 切换皮肤

将 `QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier` 设置为主题名，主题名在 `WCCommonUI` 中定义成常量了。

```objc
QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier = WCThemeIdentifierGrass;
```

## 基类

### Controllers

一些常用 `ViewController` 的基类，建议项目中所有 `ViewController` 都继承这里面基类。

