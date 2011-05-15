//
//  iPhoneClientViewController.h
//  iPhoneClient
//
//  Created by Simon Guest on 1/1/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPhoneClientViewController : UIViewController {
	IBOutlet UIButton *callServiceButton;
	IBOutlet UIButton *callRESTButton;
	IBOutlet UIButton *callODATAButton;
	IBOutlet UIButton *callSPSButton;
	IBOutlet UIButton *callO365Button;
	IBOutlet UITextField *numberTextField;
	NSMutableData *receivedData;
	NSURLConnection *connection;
}

@property (retain, nonatomic) UIButton *callServiceButton;
@property (retain, nonatomic) UIButton *callRESTButton;
@property (retain, nonatomic) UIButton *callODATAButton;
@property (retain, nonatomic) UIButton *callSPSButton;
@property (retain, nonatomic) UIButton *callO365Button;
@property (retain, nonatomic) UITextField *numberTextField;

-(IBAction)callWebService:(id)sender;
-(IBAction)callRESTService:(id)sender;
-(IBAction)callODATAService:(id)sender;
-(IBAction)callSPSService:(id)sender;
-(IBAction)callO365Service:(id)sender;


@end

