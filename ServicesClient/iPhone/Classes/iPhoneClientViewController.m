//
//  iPhoneClientViewController.m
//  iPhoneClient
//
//  Created by Simon Guest on 1/1/11.
//  Copyright 2011 Neudesic. All rights reserved.
//

#import "iPhoneClientViewController.h"
#import "SOAP.h"
#import "JSON.h"
#import "SessionModelContainer.h"
#import "WindowsCredential.h"
#import "PowerPivotDataContext.h"
#import <CoreData/CoreData.h>

@implementation iPhoneClientViewController

@synthesize callServiceButton;
@synthesize callRESTButton;
@synthesize	callODATAButton;
@synthesize callSPSButton;
@synthesize callO365Button;
@synthesize	numberTextField;

-(IBAction)callWebService:(id)sender
{
	NSLog(@"SOAP Button clicked.");
	
	BasicHttpBinding_ISOAPBinding *myBinding = [SOAP BasicHttpBinding_ISOAPBinding];
	myBinding.logXMLInOut = true;
	
	SOAP_GetTitleForCode *parameters = [[SOAP_GetTitleForCode new] autorelease];
	parameters.code = [[NSString alloc]initWithString:[numberTextField text]];
	
	BasicHttpBinding_ISOAPBindingResponse *response = [myBinding GetTitleForCodeUsingParameters:parameters];
	
	NSArray *responseBodyParts = response.bodyParts;
	for (id bodyPart in responseBodyParts)
	{
		NSString *message = [bodyPart GetTitleForCodeResult];
		UIAlertView *alertDialog = [[UIAlertView alloc]
									initWithTitle:@"The title for your session"
									message: message
									delegate:nil
									cancelButtonTitle:@"Ok"
									otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];	
	}
}


-(IBAction)callRESTService:(id)sender
{
	NSLog(@"REST Button clicked.");
	
	NSURL *url = [NSURL URLWithString:@"http://sguest01/TechEdDemoMVC/Services/REST.svc/Sessions"];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
	[request setHTTPMethod:@"GET"];
	
	connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	if (connection)
	{
		NSLog(@"Connection was established");
		receivedData = [[NSMutableData data] retain];
	}
	else {
		NSLog(@"Connection was null");
	}
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	NSLog(@"Received response from the REST call");
	[receivedData setLength:0];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	NSLog(@"Received data from the REST call");
	[receivedData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	NSLog(@"REST call failed with an error");
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	NSLog(@"Connection finished loading");
	NSString *responseString = [[NSString alloc]initWithData:receivedData encoding:NSUTF8StringEncoding];
	NSLog(@"%@",responseString);
	
	NSArray *dict = [responseString JSONValue]; 
	for (id obj in dict)
	{
		NSDictionary *session = [[NSDictionary alloc] initWithDictionary:obj];
		NSString *sessionCode = [session valueForKey:@"Code"];
		NSLog(@"%@",sessionCode);
		
	}
	
	NSLog(@"Complete");
}

-(IBAction)callODATAService:(id)sender
{
	NSLog(@"ODATA Service button pressed.");
	SessionModelContainer *proxy = [[SessionModelContainer alloc] initWithUri:@"http://sguest01/TechEdDemoMVC/Services/ODATA.svc" credential:nil];
	QueryOperationResponse *response = [proxy execute:@"Sessions"];
	//QueryOperationResponse *response = [proxy execute:@"Sessions?$filter=startswith(Code,'ARC')%20eq%20true"];
	NSMutableArray *sessions =[response getResult];
	for (id session in sessions)
	{
		NSLog(@"Session Code: %@",[session getCode]);
		NSLog(@"Session Title: %@", [session getTitle]);
	}
	NSLog(@"Complete");
}

-(IBAction)callSPSService:(id)sender
{
	NSLog(@"SPS Service button pressed.");
	WindowsCredential *creds = [[WindowsCredential alloc] initWithUserName:@"BI\\Simon.Guest" password:@"pass@word1"];
	PowerPivotDataContext *proxy = [[PowerPivotDataContext alloc] initWithUri:@"http://neudm.neudesicms.com/PowerPivot/_vti_bin/listdata.svc" credential:creds];
	QueryOperationResponse *response = [proxy execute:@"Announcements"];
	NSMutableArray *announcements = [response getResult];
	for (id announcement in announcements)
	{
		NSLog(@"%@",[announcement getTitle]);
		NSLog(@"%@",[announcement getBody]);
		
	}
	NSLog(@"Complete.");
}
									


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[callServiceButton release];
	[numberTextField release];
    [super dealloc];
}

@end
