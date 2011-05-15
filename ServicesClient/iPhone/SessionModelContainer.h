/**
*
*Copyright 2010 Microsoft Corp
*
*Licensed under the Apache License, Version 2.0 (the "License");
*you may not use this file except in compliance with the License.
*You may obtain a copy of the License at
*
*http://www.apache.org/licenses/LICENSE-2.0
*
*Unless required by applicable law or agreed to in writing, software
*distributed under the License is distributed on an "AS IS" BASIS,
*WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*See the License for the specific language governing permissions and
*limitations under the License.
*/
/**
* This code was generated by the tool 'odatagen'.
* Runtime Version:1.0
*
* Changes to this file may cause incorrect behavior and will be lost if
* the code is regenerated.
*/
/**
* Defines default Data Service URL for this proxy class
*/
#define DEFAULT_SERVICE_URL @""

#define DataServiceVersion @"1.0"

#import "ODataObject.h"
#import "ObjectContext.h"
#import "DataServiceQuery.h"
#import "ODataGUID.h"
#import "ODataBool.h"
#import  "mProperties.h"


/**
 * @interface:Session
 * @Type:EntityType
 
 * @key:Id* 
 */
@interface Session : ODataObject
{
	
	/**
	* @Type:EntityProperty
	* NotNullable
	* @EdmType:Edm.Int32
	*/
	NSNumber *m_Id;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.String
	* @MaxLength:
	* @FixedLength:
	*/
	NSString *m_Code;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.String
	* @MaxLength:
	* @FixedLength:
	*/
	NSString *m_Title;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SessionTimeslot
	* @FromRole:Session
	* @ToRole:Timeslot
	*/
	NSMutableArray *m_Timeslot;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SpeakerSession
	* @FromRole:Session
	* @ToRole:Speaker
	*/
	NSMutableArray *m_PrimarySpeakers;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SpeakerSession1
	* @FromRole:Session
	* @ToRole:Speaker
	*/
	NSMutableArray *m_AssistantSpeakers;
	
}

@property ( nonatomic , retain , getter=getId , setter=setId )NSNumber *m_Id;
@property ( nonatomic , retain , getter=getCode , setter=setCode ) NSString *m_Code;
@property ( nonatomic , retain , getter=getTitle , setter=setTitle ) NSString *m_Title;
@property ( nonatomic , retain , getter=getTimeslot , setter=setTimeslot )NSMutableArray *m_Timeslot;
@property ( nonatomic , retain , getter=getPrimarySpeakers , setter=setPrimarySpeakers )NSMutableArray *m_PrimarySpeakers;
@property ( nonatomic , retain , getter=getAssistantSpeakers , setter=setAssistantSpeakers )NSMutableArray *m_AssistantSpeakers;

+ (id) CreateSessionWithid:(NSNumber *)Id;
- (id) init;
- (id) initWithUri:(NSString*)anUri;
@end

/**
 * @interface:Timeslot
 * @Type:EntityType
 
 * @key:Id* 
 */
@interface Timeslot : ODataObject
{
	
	/**
	* @Type:EntityProperty
	* NotNullable
	* @EdmType:Edm.Int32
	*/
	NSNumber *m_Id;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.String
	* @MaxLength:
	* @FixedLength:
	*/
	NSString *m_Name;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.DateTime
	*/
	NSDate *m_Start;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.DateTime
	*/
	NSDate *m_End;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SessionTimeslot
	* @FromRole:Timeslot
	* @ToRole:Session
	*/
	NSMutableArray *m_Sessions;
	
}

@property ( nonatomic , retain , getter=getId , setter=setId )NSNumber *m_Id;
@property ( nonatomic , retain , getter=getName , setter=setName ) NSString *m_Name;
@property ( nonatomic , retain , getter=getStart , setter=setStart )NSDate *m_Start;
@property ( nonatomic , retain , getter=getEnd , setter=setEnd )NSDate *m_End;
@property ( nonatomic , retain , getter=getSessions , setter=setSessions )NSMutableArray *m_Sessions;

+ (id) CreateTimeslotWithid:(NSNumber *)Id;
- (id) init;
- (id) initWithUri:(NSString*)anUri;
@end

/**
 * @interface:Speaker
 * @Type:EntityType
 
 * @key:Id* 
 */
@interface Speaker : ODataObject
{
	
	/**
	* @Type:EntityProperty
	* NotNullable
	* @EdmType:Edm.Int32
	*/
	NSNumber *m_Id;
	
	/**
	* @Type:EntityProperty
	* @EdmType:Edm.String
	* @MaxLength:
	* @FixedLength:
	*/
	NSString *m_Name;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SpeakerSession
	* @FromRole:Speaker
	* @ToRole:Session
	*/
	NSMutableArray *m_Sessions;
	
	/**
	* @Type:NavigationProperty
	* @Relationship:SpeakerSession1
	* @FromRole:Speaker
	* @ToRole:Session
	*/
	NSMutableArray *m_SessionsAssistingWith;
	
}

@property ( nonatomic , retain , getter=getId , setter=setId )NSNumber *m_Id;
@property ( nonatomic , retain , getter=getName , setter=setName ) NSString *m_Name;
@property ( nonatomic , retain , getter=getSessions , setter=setSessions )NSMutableArray *m_Sessions;
@property ( nonatomic , retain , getter=getSessionsAssistingWith , setter=setSessionsAssistingWith )NSMutableArray *m_SessionsAssistingWith;

+ (id) CreateSpeakerWithid:(NSNumber *)Id;
- (id) init;
- (id) initWithUri:(NSString*)anUri;
@end

/**
 * Container interface SessionModelContainer, Namespace: SessionModel
 */
@interface SessionModelContainer : ObjectContext
{
	 NSString *m_OData_etag;
	 DataServiceQuery *m_Sessions;
	 DataServiceQuery *m_Timeslots;
	 DataServiceQuery *m_Speakers;
	
}

@property ( nonatomic , retain , getter=getEtag , setter=setEtag )NSString *m_OData_etag;
@property ( nonatomic , retain , getter=getSessions , setter=setSessions ) DataServiceQuery *m_Sessions;
@property ( nonatomic , retain , getter=getTimeslots , setter=setTimeslots ) DataServiceQuery *m_Timeslots;
@property ( nonatomic , retain , getter=getSpeakers , setter=setSpeakers ) DataServiceQuery *m_Speakers;

- (id) init;
- (id) initWithUri:(NSString*)anUri credential:(id)acredential;
- (id) sessions;
- (id) timeslots;
- (id) speakers;
- (void) addToSessions:(id)anObject;
- (void) addToTimeslots:(id)anObject;
- (void) addToSpeakers:(id)anObject;

@end