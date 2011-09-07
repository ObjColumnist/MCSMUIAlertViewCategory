//
//  MCSMAppDelegate.h
//  MCSMUIAlertViewCategory
//
//  Created by Spencer MacDonald on 02/09/2011.
//  Copyright 2011 Square Bracket Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MCSMRootViewController;

@interface MCSMAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MCSMRootViewController *viewController;

@end
