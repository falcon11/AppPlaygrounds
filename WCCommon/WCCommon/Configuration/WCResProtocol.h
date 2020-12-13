//
//  WCResProtocol.h
//  WCCommon
//
//  Created by ashoka on 2020/12/13.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WCResProtocol <NSObject>

+ (NSString *)bundleName;

+ (NSBundle*)mainBundle;

+ (UIImage *)imageNamed:(NSString *)name;

+ (NSString *)localization:(NSString *)key;

+ (NSString *)localization:(NSString *)key value:(NSString * __nullable)value;

@end

NS_ASSUME_NONNULL_END
