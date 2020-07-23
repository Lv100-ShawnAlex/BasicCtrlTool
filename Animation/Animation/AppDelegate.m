//
//  AppDelegate.m
//  Animation
//
//  Created by ShawnAlex on 2020/7/22.
//  Copyright © 2020 LC. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *view = [[ViewController alloc] init];
    self.window.rootViewController = view;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
