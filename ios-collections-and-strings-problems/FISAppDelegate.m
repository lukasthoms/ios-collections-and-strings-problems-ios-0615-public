//
//  FISAppDelegate.m
//  ios-collections-and-strings-problems
//
//  Created by iOS Staff on 6/4/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *helloArray = @[@"Hello", @"Worldly awesome", @"people", @"in", @"a", @"frame"];
    [self logWordsInABox:helloArray];
    return YES;
}

-(void) logWordsInABox: (NSArray*)words {
    
    //find the max number of characters needed in the box
    NSUInteger maxCharacters = 0;
    for (NSString *word in words) {
        if (word.length >= maxCharacters) {
            maxCharacters = word.length;
        }
    }
    // top of the box
    NSMutableString *boxedWords = [@"\n" mutableCopy];
    [boxedWords appendString:@"*"];
    for (NSUInteger i=0; i <= maxCharacters; i++) {
        [boxedWords appendString:@"*"];
    }
    
    // middle of the box
    for (NSString *word in words) {
        NSMutableString *mutableWord = [word mutableCopy];
        int neededSpaces = maxCharacters - word.length;
        if (mutableWord.length < maxCharacters) {
            for (NSUInteger i = 0; i < neededSpaces; i++) {
                [mutableWord appendString:@" "];
            }
        }
        [boxedWords appendFormat:@"\n*%@*",mutableWord];
    }
        NSLog(@"%@", boxedWords);
    
    // bottom of the box
    for (NSUInteger i=0; i <= maxCharacters; i++) {
        if (i == 0) {
            [boxedWords appendFormat:@"\n"];
        }
        [boxedWords appendString:@"*"];
    }
    [boxedWords appendString:@"*"];
    NSLog(@"%@", boxedWords);
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
