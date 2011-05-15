//
//  TechEdDemoAzureClientViewController.h
//  TechEdDemoAzureClient
//
//  Created by Simon Guest on 5/15/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TechEdDemoAzureClientViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>  {
    IBOutlet UIButton *takePictureButton;
}

@property (nonatomic, retain) UIButton *takePictureButton;

-(IBAction)takePictureButtonClick:(id)sender;

@end
