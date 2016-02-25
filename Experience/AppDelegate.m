//
//  AppDelegate.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/16.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "AppDelegate.h"
#import "MineViewController.h"
#import "ChatViewController.h"
#import "DiscoveryViewController.h"
#import "FriendsViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *ctrlTabBar = [[UITabBarController alloc] init];
    ctrlTabBar.tabBar.tintColor = [UIColor greenColor];
    self.window.rootViewController = ctrlTabBar;
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //创建子控制器
    ChatViewController *ctrlChat = [[ChatViewController alloc] init];
    UINavigationController *navChat = [[UINavigationController alloc] initWithRootViewController:ctrlChat];
    navChat.tabBarItem.title = @"微信";
    navChat.tabBarItem.image = [UIImage imageNamed:@"ic_message"];
    
    FriendsViewController *ctrlFriend = [[FriendsViewController alloc] init];
    UINavigationController *navFriend = [[UINavigationController alloc] initWithRootViewController:ctrlFriend];
    navFriend.tabBarItem.title = @"通讯录";
    navFriend.tabBarItem.image = [UIImage imageNamed:@"ic_architecture"];
    
    
    DiscoveryViewController *ctrlDiscovery = [[DiscoveryViewController alloc] init];
    UINavigationController *navDiscovery = [[UINavigationController alloc] initWithRootViewController:ctrlDiscovery];
    navDiscovery.tabBarItem.title = @"发现";
    navDiscovery.tabBarItem.image = [UIImage imageNamed:@"ic_challenge"];
    
    
    MineViewController *ctrlMine = [[MineViewController alloc] init];
    UINavigationController *navMine = [[UINavigationController alloc] initWithRootViewController:ctrlMine];
    navMine.tabBarItem.title = @"我";
    navMine.tabBarItem.image = [UIImage imageNamed:@"ic_more"];
    
    ctrlTabBar.viewControllers = @[navChat, navFriend, navDiscovery, navMine];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
