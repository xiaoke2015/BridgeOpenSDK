//
//  BridgeWechat.h
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeWechat : NSObject

+ (BOOL)registerApp:(NSString*)appId universalLink:(NSString*)link;

@end

NS_ASSUME_NONNULL_END
