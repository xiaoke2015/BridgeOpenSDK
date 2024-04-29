//
//  BridgeBugly.m
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import "BridgeBugly.h"
#import <Bugly/Bugly.h>

@implementation BridgeBugly


/// <#Description#>
/// - Parameter appId: <#appId description#>
+ (void)startWithAppId:(NSString*)appId {
    BuglyConfig * config = [BuglyConfig new];
    [Bugly startWithAppId:appId config:config];
}


/// <#Description#>
/// - Parameter userId: <#userId description#>
+ (void)setUserIdentifier:(NSString*)userId {
    [Bugly setUserIdentifier:userId];
}

@end
