//
//  TechEdDemoAzureClientViewController.m
//  TechEdDemoAzureClient
//
//  Created by Simon Guest on 5/15/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import "TechEdDemoAzureClientViewController.h"

#import "AuthenticationCredential.h"
#import "CloudStorageClient.h"

@implementation TechEdDemoAzureClientViewController

@synthesize takePictureButton;

UIImagePickerController *picker;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (IBAction)takePictureButtonClick:(id)sender 
{
    NSLog(@"Take Picture Button Clicked");
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];
    
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"Got picture");
    
    UIImage *newImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    NSData *data = UIImageJPEGRepresentation(newImage, 0.2);
    
    // Now I need to upload to Windows Azure...
   
    AuthenticationCredential *credential = [AuthenticationCredential credentialWithAzureServiceAccount:@"iostest" accessKey:@"/9seXadQ9HwOpXUO1jKxFN8qVwluGWrRkDQS+wZrghS9a1wPNh1ysHBvj0q0zL34E/qcWkmygEBqNFSz6Yk2eA=="];
    
    CloudStorageClient *client = [CloudStorageClient storageClientWithCredential:credential];

    
    
    [[picker parentViewController] dismissModalViewControllerAnimated:YES];
    [picker release]; 
    [data release];
    [newImage release];
}


- (void)viewDidUnload
{
    [takePictureButton release];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
