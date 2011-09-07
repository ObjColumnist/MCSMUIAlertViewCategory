//
//  MCSMUIAlertViewCategory.h
//  MCSMUIAlertViewCategory
//
//  Created by Spencer MacDonald on 02/09/2011.
//  Copyright 2011 Square Bracket Software. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^MCSMUIAlertViewCompletionHandler)(NSUInteger buttonIndex);

@interface UIAlertView (MCSMUIAlertViewCategory)
- (MCSMUIAlertViewCompletionHandler)MCSM_completionHandler;
- (void)MCSM_setCompletionHandler:(MCSMUIAlertViewCompletionHandler)handler;
@end
