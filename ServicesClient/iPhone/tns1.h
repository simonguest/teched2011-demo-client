#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class tns1_ArrayOfSessionSummary;
@class tns1_SessionSummary;
@interface tns1_SessionSummary : NSObject {
	
/* elements */
	NSString * Code;
	NSString * PrimarySpeaker;
	NSString * Title;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_SessionSummary *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Code;
@property (retain) NSString * PrimarySpeaker;
@property (retain) NSString * Title;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ArrayOfSessionSummary : NSObject {
	
/* elements */
	NSMutableArray *SessionSummary;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ArrayOfSessionSummary *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addSessionSummary:(tns1_SessionSummary *)toAdd;
@property (readonly) NSMutableArray * SessionSummary;
/* attributes */
- (NSDictionary *)attributes;
@end
