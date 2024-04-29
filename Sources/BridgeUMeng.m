//
//  BridgeUMeng.m
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import "BridgeUMeng.h"
#import <UMCommon/MobClick.h>
#import <UMCommon/UMConfigure.h>

@implementation BridgeUMeng

/// <#Description#>
/// - Parameters:
///   - appKey: <#appKey description#>
///   - channel: <#channel description#>
+ (void)initWithAppkey:(NSString *)appKey channel:(NSString *)channel {
    [UMConfigure initWithAppkey:appKey channel:channel];
}


/// <#Description#>
/// - Parameters:
///   - eventId: <#eventId description#>
///   - attributes: <#attributes description#>
+ (void)event:(NSString*)eventId attributes:(NSDictionary *)attributes {
    [MobClick event:eventId attributes:attributes];
}

@end
