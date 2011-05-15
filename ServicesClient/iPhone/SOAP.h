#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class SOAP_GetSessions;
@class SOAP_GetSessionsResponse;
@class SOAP_GetCurrentSessionCode;
@class SOAP_GetCurrentSessionCodeResponse;
@class SOAP_GetTitleForCode;
@class SOAP_GetTitleForCodeResponse;
#import "tns1.h"
@interface SOAP_GetSessions : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetSessions *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface SOAP_GetSessionsResponse : NSObject {
	
/* elements */
	tns1_ArrayOfSessionSummary * GetSessionsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetSessionsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_ArrayOfSessionSummary * GetSessionsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface SOAP_GetCurrentSessionCode : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetCurrentSessionCode *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface SOAP_GetCurrentSessionCodeResponse : NSObject {
	
/* elements */
	NSString * GetCurrentSessionCodeResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetCurrentSessionCodeResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * GetCurrentSessionCodeResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface SOAP_GetTitleForCode : NSObject {
	
/* elements */
	NSString * code;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetTitleForCode *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * code;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface SOAP_GetTitleForCodeResponse : NSObject {
	
/* elements */
	NSString * GetTitleForCodeResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (SOAP_GetTitleForCodeResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * GetTitleForCodeResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xs.h"
#import "SOAP.h"
#import "ns1.h"
#import "tns1.h"
#import "tns2.h"
@class BasicHttpBinding_ISOAPBinding;
@interface SOAP : NSObject {
	
}
+ (BasicHttpBinding_ISOAPBinding *)BasicHttpBinding_ISOAPBinding;
@end
@class BasicHttpBinding_ISOAPBindingResponse;
@class BasicHttpBinding_ISOAPBindingOperation;
@protocol BasicHttpBinding_ISOAPBindingResponseDelegate <NSObject>
- (void) operation:(BasicHttpBinding_ISOAPBindingOperation *)operation completedWithResponse:(BasicHttpBinding_ISOAPBindingResponse *)response;
@end
@interface BasicHttpBinding_ISOAPBinding : NSObject <BasicHttpBinding_ISOAPBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(BasicHttpBinding_ISOAPBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (BasicHttpBinding_ISOAPBindingResponse *)GetSessionsUsingParameters:(SOAP_GetSessions *)aParameters ;
- (void)GetSessionsAsyncUsingParameters:(SOAP_GetSessions *)aParameters  delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)responseDelegate;
- (BasicHttpBinding_ISOAPBindingResponse *)GetCurrentSessionCodeUsingParameters:(SOAP_GetCurrentSessionCode *)aParameters ;
- (void)GetCurrentSessionCodeAsyncUsingParameters:(SOAP_GetCurrentSessionCode *)aParameters  delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)responseDelegate;
- (BasicHttpBinding_ISOAPBindingResponse *)GetTitleForCodeUsingParameters:(SOAP_GetTitleForCode *)aParameters ;
- (void)GetTitleForCodeAsyncUsingParameters:(SOAP_GetTitleForCode *)aParameters  delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)responseDelegate;
@end
@interface BasicHttpBinding_ISOAPBindingOperation : NSOperation {
	BasicHttpBinding_ISOAPBinding *binding;
	BasicHttpBinding_ISOAPBindingResponse *response;
	id<BasicHttpBinding_ISOAPBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) BasicHttpBinding_ISOAPBinding *binding;
@property (readonly) BasicHttpBinding_ISOAPBindingResponse *response;
@property (nonatomic, assign) id<BasicHttpBinding_ISOAPBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(BasicHttpBinding_ISOAPBinding *)aBinding delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)aDelegate;
@end
@interface BasicHttpBinding_ISOAPBinding_GetSessions : BasicHttpBinding_ISOAPBindingOperation {
	SOAP_GetSessions * parameters;
}
@property (retain) SOAP_GetSessions * parameters;
- (id)initWithBinding:(BasicHttpBinding_ISOAPBinding *)aBinding delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)aDelegate
	parameters:(SOAP_GetSessions *)aParameters
;
@end
@interface BasicHttpBinding_ISOAPBinding_GetCurrentSessionCode : BasicHttpBinding_ISOAPBindingOperation {
	SOAP_GetCurrentSessionCode * parameters;
}
@property (retain) SOAP_GetCurrentSessionCode * parameters;
- (id)initWithBinding:(BasicHttpBinding_ISOAPBinding *)aBinding delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)aDelegate
	parameters:(SOAP_GetCurrentSessionCode *)aParameters
;
@end
@interface BasicHttpBinding_ISOAPBinding_GetTitleForCode : BasicHttpBinding_ISOAPBindingOperation {
	SOAP_GetTitleForCode * parameters;
}
@property (retain) SOAP_GetTitleForCode * parameters;
- (id)initWithBinding:(BasicHttpBinding_ISOAPBinding *)aBinding delegate:(id<BasicHttpBinding_ISOAPBindingResponseDelegate>)aDelegate
	parameters:(SOAP_GetTitleForCode *)aParameters
;
@end
@interface BasicHttpBinding_ISOAPBinding_envelope : NSObject {
}
+ (BasicHttpBinding_ISOAPBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface BasicHttpBinding_ISOAPBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
