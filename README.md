# BridgeOpenSDK
swift 桥接 OC 的 pod 


## 使用方法

```
    func initSDK() {
        BridgeWechat.registerApp("", universalLink: "")
        BridgeBugly.start(withAppId: "")
        BridgeUMeng.initWithAppkey("", channel: "")
        BridgeJPush.setup(withOption: nil, appKey: "", channel: "", apsForProduction: true, advertisingIdentifier: "")
    }
```
