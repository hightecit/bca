//
//  AppDelegate.m
//  BCA
//
//  Created by Zafar Loynmoon on 13/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize arrImageDisplay,arrTitle,arrDetail,navController,maindic,arrTitle1;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     navController = [storyboard instantiateViewControllerWithIdentifier:@"Home"];
     self.window.rootViewController = navController;
    
    [application setStatusBarHidden:YES];
    
    arrImageDisplay=@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"6.jpg"];
    
    maindic = @{@"A" : @[@"Andrew Simonds", @"Angelina Fernandes"],@"B" : @[@"Bella D'costa", @"Bittu Verma", @"Brittanie Gonzalves"]};
//                @"C" : @[@"Camel", @"Cockatoo"],
//                @"D" : @[@"Dog", @"Donkey"],
//                @"E" : @[@"Emu"],
//                @"G" : @[@"Giraffe", @"Greater Rhea"],
//                @"H" : @[@"Hippopotamus", @"Horse"],
//                @"K" : @[@"Koala"],
//                @"L" : @[@"Lion", @"Llama"],
//                @"M" : @[@"Manatus", @"Meerkat"],
//                @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
//                @"R" : @[@"Rhinoceros"],
//                @"S" : @[@"Seagull"],
//                @"T" : @[@"Tasmania Devil"],
//                @"W" : @[@"Whale", @"Whale Shark", @"Wombat"]};
    
    
    arrTitle = [[maindic allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];

    
    arrTitle1 = @[@"Andrew Simonds",@"Angelina Fernandes",@"Brad Williams",@"Bella D'costa",@"Bittu Verma",@"Brittanie Gonzalves"];
    arrDetail=@[@"Creative Designer",@"Managing Director",@"Creative Designer",@"iPhone Developer",@"It was Great Party yesterday",@"Great football match"];
   
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
