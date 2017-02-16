//
//  AppDelegate.m
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "AppDelegate.h"
#import "Config.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:kAppWhiteColor];
    
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:homeVC];
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
