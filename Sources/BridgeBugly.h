//
//  BridgeBugly.h
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeBugly : NSObject

/// <#Description#>
/// - Parameter appId: <#appId description#>
+ (void)startWithAppId:(NSString*)appId;

/// <#Description#>
/// - Parameter userId: <#userId description#>
+ (void)setUserIdentifier:(NSString*)userId;

@end

NS_ASSUME_NONNULL_END
