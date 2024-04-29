//
//  BridgeJPush.m
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import "BridgeJPush.h"
#import <JPUSHService.h>

@implementation BridgeJPush

+ (void)setLogOFF {
    [JPUSHService setLogOFF];
//    [JPUSHService setDebugMode];
}

+ (void)setupWithOption:(nullable NSDictionary *)launchingOption
                 appKey:(NSString *)appKey
                channel:(nullable NSString *)channel
       apsForProduction:(BOOL)isProduction
  advertisingIdentifier:(nullable NSString *)advertisingId {
    
    //【注册通知】通知回调代理（可选）
    JPUSHRegisterEntity * entity = [[JPUSHRegisterEntity alloc] init];
    
    if (@available(iOS 12.0, *)) {
        entity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    } else {
        entity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound;
    }
    
    [JPUSHService registerForRemoteNotificationConfig:entity delegate:nil];
    
    [JPUSHService setupWithOption:launchingOption appKey:appKey channel:channel apsForProduction:isProduction advertisingIdentifier:advertisingId];
    
    [JPUSHService setLogOFF];
}


+ (void)registerDeviceToken:( NSData * __nullable)deviceToken {
    [JPUSHService registerDeviceToken:deviceToken];
}

+ (NSString*)registrationID {
    return [JPUSHService registrationID];
}

+ (void)setAlias:(NSString*)alias {
    [JPUSHService setAlias:alias completion:^(NSInteger iResCode, NSString * _Nullable iAlias, NSInteger seq) {
        
    } seq: 0];
}

+ (void)registrationIDCompletionHandler:(void(^)(int resCode,NSString * _Nullable registrationID))completionHandler {
    [JPUSHService registrationIDCompletionHandler:completionHandler];
}

@end
