//
//  AppDelegate.m
//  CrashSightExample
//
//  Created by Tianyu Xia on 2022/8/18.
//

#import "AppDelegate.h"
#import <CrashSight/CrashSight.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CrashSightConfig *config = [[CrashSightConfig alloc] init];
    config.debugMode = YES;
    config.crashServerUrl = @"https://test-android.crashsight.qq.com/rqd/pb/async";
    [CrashSight startWithAppId:@"0a4bb808fc" config:config];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
