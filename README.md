# CrashSight
详细文档请参考： https://crashsight.qq.com/docs/zh/crashsight/sdkDocuments/mobile-sdk.html

## Installation
### CocoaPods
1. Add `pod 'CrashSight'` to your Podfile.
* Run `pod install` or `pod update`.
* Import `<CrashSight/CrashSight.h>`

## Usage
### Objective-C

1. `#import <CrashSight/CrashSight.h>`
2. `Initiate CrashSight`

```objc

    CrashSightConfig *config = [[CrashSightConfig alloc] init];
    config.debugMode = YES;
    config.crashServerUrl = @"https://ios.crashsight.qq.com/rqd/pb/sync";
    [CrashSight startWithAppId:@"you appid applied form crashsight" config:config]

```
