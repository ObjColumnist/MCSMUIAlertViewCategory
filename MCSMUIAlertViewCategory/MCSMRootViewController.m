//
//  MCSMRootViewController.m
//  MCSMUIAlertViewCategory
//
//  Created by Spencer MacDonald on 02/09/2011.
//  Copyright 2011 Square Bracket Software. All rights reserved.
//

#import "MCSMRootViewController.h"
#import "MCSMUIAlertViewCategory.h"

@implementation MCSMRootViewController


- (IBAction)showAlert:(id)sender{
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"YES or NO" message:@"Select One" delegate:nil cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    [alertView MCSM_setCompletionHandler:^(NSUInteger buttonIndex){
       
        NSLog(@"%u",buttonIndex);
    }];
    
    [alertView show];
    [alertView autorelease];
}

@end
