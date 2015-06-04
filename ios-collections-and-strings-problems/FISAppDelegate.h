//
//  FISAppDelegate.h
//  ios-collections-and-strings-problems
//
//  Created by iOS Staff on 6/4/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

-(void) logWordsInABox: (NSArray*)words;

@property (strong, nonatomic) UIWindow *window;

@end
