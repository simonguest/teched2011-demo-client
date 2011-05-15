//
//  iPhoneClientAppDelegate.h
//  iPhoneClient
//
//  Created by Simon Guest on 1/1/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPhoneClientViewController;

@interface iPhoneClientAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPhoneClientViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhoneClientViewController *viewController;

@end

