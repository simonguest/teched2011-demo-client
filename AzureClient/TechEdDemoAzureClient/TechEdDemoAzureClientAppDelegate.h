//
//  TechEdDemoAzureClientAppDelegate.h
//  TechEdDemoAzureClient
//
//  Created by Simon Guest on 5/15/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TechEdDemoAzureClientViewController;

@interface TechEdDemoAzureClientAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TechEdDemoAzureClientViewController *viewController;

@end
