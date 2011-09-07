//
//  MCSMAppDelegate.m
//  MCSMUIAlertViewCategory
//
//  Created by Spencer MacDonald on 02/09/2011.
//  Copyright 2011 Square Bracket Software. All rights reserved.
//

#import "MCSMAppDelegate.h"

#import "MCSMRootViewController.h"

@implementation MCSMAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
     
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
