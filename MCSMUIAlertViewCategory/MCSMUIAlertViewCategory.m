//
//  MCSMUIAlertViewCategory.m
//  MCSMUIAlertViewCategory
//
//  Created by Spencer MacDonald on 02/09/2011.
//  Copyright 2011 Square Bracket Software. All rights reserved.
//

#import "MCSMUIAlertViewCategory.h"
#import <objc/runtime.h>

NSString * const MCSMUIAlertViewCompletionHandlerKey = @"MCSMUIAlertViewCompletionHandlerKey";

@implementation UIAlertView (MCSMUIAlertViewCategory)

- (MCSMUIAlertViewCompletionHandler)MCSM_completionHandler{
    MCSMUIAlertViewCompletionHandler handler = (MCSMUIAlertViewCompletionHandler)objc_getAssociatedObject(self,MCSMUIAlertViewCompletionHandlerKey);
    return handler;
}

- (void)MCSM_setCompletionHandler:(MCSMUIAlertViewCompletionHandler)handler{
    
    self.delegate = (id<UIAlertViewDelegate>)self;
    
    objc_setAssociatedObject(self, MCSMUIAlertViewCompletionHandlerKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    MCSMUIAlertViewCompletionHandler handler = (MCSMUIAlertViewCompletionHandler)objc_getAssociatedObject(self,MCSMUIAlertViewCompletionHandlerKey);
    
    if(handler)
    {
        handler(buttonIndex);
    }
    
    objc_setAssociatedObject(self, MCSMUIAlertViewCompletionHandlerKey, nil, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
