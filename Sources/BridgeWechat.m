//
//  BridgeWechat.m
//  BridgeOpenSDK
//
//  Created by 李加建 on 2024/4/29.
//

#import "BridgeWechat.h"
#import <WechatOpenSDK/WXApi.h>
#import <WechatOpenSDK/WXApiObject.h>

@interface BridgeWechat ()
<WXApiDelegate>
@end

@implementation BridgeWechat

- (void)handleOpenURL:(NSURL*)url {
    [WXApi handleOpenURL:url delegate:self];
}

- (void)onResp:(BaseResp *)resp {
    NSLog(@"%@",resp);
}

+ (void)startLog {
    [WXApi startLogByLevel:WXLogLevelNormal logBlock:^(NSString * _Nonnull log) {
        NSLog(@"%@", log);
    }];
}

+ (BOOL)registerApp:(NSString*)appId universalLink:(NSString*)link {
    return [WXApi registerApp:appId universalLink:link];
}


+ (void)openMiniProgram:(NSString*)userName path:(NSString*)path {
    WXLaunchMiniProgramReq *launchMiniProgramReq = [WXLaunchMiniProgramReq object];
    //拉起的小程序的username
    launchMiniProgramReq.path = path;
    //拉起小程序页面的可带参路径，不填默认拉起小程序首页，对于小游戏，可以只传入 query 部分，来实现传参效果，如：传入 "?foo=bar"。
    launchMiniProgramReq.userName = userName;
    launchMiniProgramReq.miniProgramType = WXMiniProgramTypeRelease; //拉起小程序的类型
    [WXApi sendReq:launchMiniProgramReq completion:^(BOOL success) {
        NSLog(@"%@",@(success));
    }];
}

+ (BOOL)isWXAppInstalled {
    return [WXApi isWXAppInstalled];
}

@end
