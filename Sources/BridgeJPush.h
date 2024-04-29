//
//  BridgeJPush.h
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeJPush : NSObject

+ (void)setupWithOption:(nullable NSDictionary *)launchingOption
                 appKey:(NSString *)appKey
                channel:(nullable NSString *)channel
       apsForProduction:(BOOL)isProduction
  advertisingIdentifier:(nullable NSString *)advertisingId;


+ (void)registerDeviceToken:( NSData * __nullable)deviceToken;


+ (NSString*)registrationID;

+ (void)registrationIDCompletionHandler:(void(^)(int resCode,NSString * _Nullable registrationID))completionHandler;

@end

NS_ASSUME_NONNULL_END
