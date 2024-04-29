//
//  BridgeUMeng.h
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeUMeng : NSObject

/// <#Description#>
/// - Parameters:
///   - appKey: <#appKey description#>
///   - channel: <#channel description#>
+ (void)initWithAppkey:(NSString *)appKey channel:(NSString *)channel;

/// <#Description#>
/// - Parameters:
///   - eventId: <#eventId description#>
///   - attributes: <#attributes description#>
+ (void)event:(NSString*)eventId attributes:(NSDictionary *)attributes;

@end

NS_ASSUME_NONNULL_END
