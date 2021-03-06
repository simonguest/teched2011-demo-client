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

#import "SessionModelContainer.h"
/**
 * @interface:Session
 * @key:Id
 */
@implementation Session
	@synthesize m_Id;
	@synthesize m_Code;
	@synthesize m_Title;
	@synthesize m_Timeslot;
	@synthesize m_PrimarySpeakers;
	@synthesize m_AssistantSpeakers;

/**
 *Method to create an instance of Session
 */
+ (id) CreateSessionWithid:(NSNumber *)Id
{
	Session *session = [[Session alloc]init];
	session.m_Id = Id;
	return session;
}
/**
 * Initialising object for Session
 */
- (id) init
{
	self=[self initWithUri:nil];
	return self;
}

- (id) initWithUri:(NSString*)anUri 
{
	if(self=[super initWithUri:anUri])
	{
		[self setBaseURI:anUri];
		m_OData_hasStream.booleanvalue=NO;
		[m_OData_entityMap setObject:@"Timeslot" forKey:@"Timeslot"];
		[m_OData_entityMap setObject:@"Speaker" forKey:@"PrimarySpeakers"];
		[m_OData_entityMap setObject:@"Speaker" forKey:@"AssistantSpeakers"];
		mProperties *obj;
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.Int32" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:NO Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Id"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.String" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Code"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.String" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Title"];
		[obj release];
		
		[m_OData_entityFKRelation setObject:@"SessionTimeslot" forKey:@"Timeslot"];
		[m_OData_entityFKRelation setObject:@"SpeakerSession" forKey:@"Speaker"];
		[m_OData_entityFKRelation setObject:@"SpeakerSession1" forKey:@"Speaker"];

		NSMutableArray *anEntityKey=[[NSMutableArray alloc]init];
		[anEntityKey addObject:@"Id"];
		[m_OData_entityKey setObject:anEntityKey forKey:@"Session"];
		[anEntityKey release];
	}
	return self;
}

-(NSMutableArray *)getSyndicateArray
{
	NSMutableArray *syndicateArray=[[NSMutableArray alloc]init];
	
	return [syndicateArray autorelease];
}
-(Session *)getDeepCopy
{
	Session *obj=[[Session alloc]initWithUri:[self getBaseURI]];
	[obj setId:[self getId]];
	[obj setCode:[self getCode]];
	[obj setTitle:[self getTitle]];
	[obj setTimeslot:[self getTimeslot]];
	[obj setPrimarySpeakers:[self getPrimarySpeakers]];
	[obj setAssistantSpeakers:[self getAssistantSpeakers]];

	return [obj autorelease];
}
- (void) dealloc
{
	[m_Id release];
	m_Id = nil;
	[m_Code release];
	m_Code = nil;
	[m_Title release];
	m_Title = nil;
	
	[m_Timeslot release];
	m_Timeslot = nil;
	[m_PrimarySpeakers release];
	m_PrimarySpeakers = nil;
	[m_AssistantSpeakers release];
	m_AssistantSpeakers = nil;
	[super dealloc];
}

@end
/**
 * @interface:Timeslot
 * @key:Id
 */
@implementation Timeslot
	@synthesize m_Id;
	@synthesize m_Name;
	@synthesize m_Start;
	@synthesize m_End;
	@synthesize m_Sessions;

/**
 *Method to create an instance of Timeslot
 */
+ (id) CreateTimeslotWithid:(NSNumber *)Id
{
	Timeslot *timeslot = [[Timeslot alloc]init];
	timeslot.m_Id = Id;
	return timeslot;
}
/**
 * Initialising object for Timeslot
 */
- (id) init
{
	self=[self initWithUri:nil];
	return self;
}

- (id) initWithUri:(NSString*)anUri 
{
	if(self=[super initWithUri:anUri])
	{
		[self setBaseURI:anUri];
		m_OData_hasStream.booleanvalue=NO;
		[m_OData_entityMap setObject:@"Session" forKey:@"Sessions"];
		mProperties *obj;
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.Int32" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:NO Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Id"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.String" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Name"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.DateTime" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Start"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.DateTime" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_End"];
		[obj release];
		
		[m_OData_entityFKRelation setObject:@"SessionTimeslot" forKey:@"Session"];

		NSMutableArray *anEntityKey=[[NSMutableArray alloc]init];
		[anEntityKey addObject:@"Id"];
		[m_OData_entityKey setObject:anEntityKey forKey:@"Timeslot"];
		[anEntityKey release];
	}
	return self;
}

-(NSMutableArray *)getSyndicateArray
{
	NSMutableArray *syndicateArray=[[NSMutableArray alloc]init];
	
	return [syndicateArray autorelease];
}
-(Timeslot *)getDeepCopy
{
	Timeslot *obj=[[Timeslot alloc]initWithUri:[self getBaseURI]];
	[obj setId:[self getId]];
	[obj setName:[self getName]];
	[obj setStart:[self getStart]];
	[obj setEnd:[self getEnd]];
	[obj setSessions:[self getSessions]];

	return [obj autorelease];
}
- (void) dealloc
{
	[m_Id release];
	m_Id = nil;
	[m_Name release];
	m_Name = nil;
	[m_Start release];
	m_Start = nil;
	[m_End release];
	m_End = nil;
	
	[m_Sessions release];
	m_Sessions = nil;
	[super dealloc];
}

@end
/**
 * @interface:Speaker
 * @key:Id
 */
@implementation Speaker
	@synthesize m_Id;
	@synthesize m_Name;
	@synthesize m_Sessions;
	@synthesize m_SessionsAssistingWith;

/**
 *Method to create an instance of Speaker
 */
+ (id) CreateSpeakerWithid:(NSNumber *)Id
{
	Speaker *speaker = [[Speaker alloc]init];
	speaker.m_Id = Id;
	return speaker;
}
/**
 * Initialising object for Speaker
 */
- (id) init
{
	self=[self initWithUri:nil];
	return self;
}

- (id) initWithUri:(NSString*)anUri 
{
	if(self=[super initWithUri:anUri])
	{
		[self setBaseURI:anUri];
		m_OData_hasStream.booleanvalue=NO;
		[m_OData_entityMap setObject:@"Session" forKey:@"Sessions"];
		[m_OData_entityMap setObject:@"Session" forKey:@"SessionsAssistingWith"];
		mProperties *obj;
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.Int32" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:NO Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Id"];
		[obj release];
		
		obj=[[mProperties alloc]initWithEdmType:@"Edm.String" MaxLength:@"" MinLength:@"" FixedLength:NO Nullable:YES Unicode:NO ConcurrencyMode:@"" FC_TargetPath:@"" FC_KeepInContent:YES FC_SourcePath:@"" FC_ContentKind:@"" FC_NsPrefix:@"" FC_NsUri:@""];
		[m_OData_propertiesMap setObject:obj forKey:@"m_Name"];
		[obj release];
		
		[m_OData_entityFKRelation setObject:@"SpeakerSession" forKey:@"Session"];
		[m_OData_entityFKRelation setObject:@"SpeakerSession1" forKey:@"Session"];

		NSMutableArray *anEntityKey=[[NSMutableArray alloc]init];
		[anEntityKey addObject:@"Id"];
		[m_OData_entityKey setObject:anEntityKey forKey:@"Speaker"];
		[anEntityKey release];
	}
	return self;
}

-(NSMutableArray *)getSyndicateArray
{
	NSMutableArray *syndicateArray=[[NSMutableArray alloc]init];
	
	return [syndicateArray autorelease];
}
-(Speaker *)getDeepCopy
{
	Speaker *obj=[[Speaker alloc]initWithUri:[self getBaseURI]];
	[obj setId:[self getId]];
	[obj setName:[self getName]];
	[obj setSessions:[self getSessions]];
	[obj setSessionsAssistingWith:[self getSessionsAssistingWith]];

	return [obj autorelease];
}
- (void) dealloc
{
	[m_Id release];
	m_Id = nil;
	[m_Name release];
	m_Name = nil;
	
	[m_Sessions release];
	m_Sessions = nil;
	[m_SessionsAssistingWith release];
	m_SessionsAssistingWith = nil;
	[super dealloc];
}

@end
 
/**
 * Container interface SessionModelContainer, Namespace: SessionModel
 */
@implementation SessionModelContainer

	@synthesize m_OData_etag;

	@synthesize m_Sessions;
	@synthesize m_Timeslots;
	@synthesize m_Speakers;
/**
 * The initializer for SessionModelContainer accepting service URI
 */
- (id) init
{
	NSString* tmpuri =[[NSString alloc]initWithString:DEFAULT_SERVICE_URL];
	self=[self initWithUri:tmpuri credential:nil];
	[tmpuri release];
	return self;
}

- (id) initWithUri:(NSString*)anUri credential:(id)acredential
{
	NSString* tmpuri=nil;
	if([anUri length]==0)
	{
	 	tmpuri = DEFAULT_SERVICE_URL;
	}
	else
	{
		tmpuri =[NSString stringWithString:anUri];
	}
	if(![tmpuri hasSuffix:@"/"])
	{
		tmpuri=[tmpuri stringByAppendingString:@"/"];
	}

	if(self=[super initWithUri:tmpuri credentials:acredential dataServiceVersion:DataServiceVersion])
	{
		[super setServiceNamespace:@"SessionModel"];

		NSMutableArray* tempEntities=[[NSMutableArray alloc]init];
		
		[tempEntities addObject:@"Sessions"];
		[tempEntities addObject:@"Timeslots"];
		[tempEntities addObject:@"Speakers"];

		if([tempEntities count] > 0 )
		{
			[super setEntitiesWithArray:tempEntities];
		}
		[tempEntities release];

		NSMutableArray* tempEntitiySetKey=[[NSMutableArray alloc]init];
		
		[tempEntitiySetKey addObject:@"sessions"];
		[tempEntitiySetKey addObject:@"timeslots"];
		[tempEntitiySetKey addObject:@"speakers"];

		NSMutableArray* tempEntitiyTypeobj=[[NSMutableArray alloc]init];
		
		[tempEntitiyTypeobj addObject:@"Session"];
		[tempEntitiyTypeobj addObject:@"Timeslot"];
		[tempEntitiyTypeobj addObject:@"Speaker"];

		if( ( [tempEntitiySetKey count] > 0 ) && ( [tempEntitiyTypeobj count] > 0 ) )
		{
			[super setEntitySet2TypeWithObject:tempEntitiyTypeobj forKey:tempEntitiySetKey];

		}

		[tempEntitiySetKey release];
		[ tempEntitiyTypeobj release];

		NSMutableArray* tempEntitiyTypeKey=[[NSMutableArray alloc]init];
		
		[tempEntitiyTypeKey addObject:@"session"];
		[tempEntitiyTypeKey addObject:@"timeslot"];
		[tempEntitiyTypeKey addObject:@"speaker"];
		NSMutableArray* tempEntitySetObj=[[NSMutableArray alloc]init];
		
		[tempEntitySetObj addObject:@"Sessions"];
		[tempEntitySetObj addObject:@"Timeslots"];
		[tempEntitySetObj addObject:@"Speakers"];

		if( ( [tempEntitiyTypeKey count] > 0 ) && ( [tempEntitySetObj count] > 0 ) )
		{
			[super setEntityType2SetWithObject:tempEntitySetObj forKey:tempEntitiyTypeKey];

		}
    	[tempEntitiyTypeKey release];
		[tempEntitySetObj release];

		NSMutableArray* foreignKeys=[[NSMutableArray alloc]init];		
		[foreignKeys addObject:@"SessionTimeslot"];
		[foreignKeys addObject:@"SpeakerSession"];
		[foreignKeys addObject:@"SpeakerSession1"];

		NSMutableArray *arrOfDictionaries=[[NSMutableArray alloc]initWithCapacity:[foreignKeys count]];

		NSMutableArray *arr;
 
		arr=[[NSMutableArray alloc]init];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Session",@"EndRole",@"Session",@"Type",@"*",@"Multiplicity",nil] autorelease]];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Timeslot",@"EndRole",@"Timeslot",@"Type",@"1",@"Multiplicity",nil] autorelease]];
		[arrOfDictionaries addObject:arr];
		[arr release];


		arr=[[NSMutableArray alloc]init];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Speaker",@"EndRole",@"Speaker",@"Type",@"*",@"Multiplicity",nil] autorelease]];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Session",@"EndRole",@"Session",@"Type",@"*",@"Multiplicity",nil] autorelease]];
		[arrOfDictionaries addObject:arr];
		[arr release];


		arr=[[NSMutableArray alloc]init];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Speaker",@"EndRole",@"Speaker",@"Type",@"*",@"Multiplicity",nil] autorelease]];
		[arr addObject:[[[NSDictionary alloc]initWithObjectsAndKeys:@"Session",@"EndRole",@"Session",@"Type",@"*",@"Multiplicity",nil] autorelease]];
		[arrOfDictionaries addObject:arr];
		[arr release];

		if( ( [foreignKeys count] > 0 ) && ( [arrOfDictionaries count] > 0 ) )
		{
			[super setAssociationforObjects:arrOfDictionaries forKeys:foreignKeys];
		}
		[foreignKeys release];
		[arrOfDictionaries release];

		m_Sessions = [[DataServiceQuery alloc]initWithUri:@"Sessions" objectContext: self];
		m_Timeslots = [[DataServiceQuery alloc]initWithUri:@"Timeslots" objectContext: self];
		m_Speakers = [[DataServiceQuery alloc]initWithUri:@"Speakers" objectContext: self];
		
	}
	return self;
}


/**
 * Method returns DataServiceQuery reference for
 * the entityset Sessions
 */
- (id) sessions
{
	[self.m_Sessions clearAllOptions];
	return self.m_Sessions;
}

/**
 * Method returns DataServiceQuery reference for
 * the entityset Timeslots
 */
- (id) timeslots
{
	[self.m_Timeslots clearAllOptions];
	return self.m_Timeslots;
}

/**
 * Method returns DataServiceQuery reference for
 * the entityset Speakers
 */
- (id) speakers
{
	[self.m_Speakers clearAllOptions];
	return self.m_Speakers;
}

/**
 * Methods for adding object to the entityset/collection
 */

- (void) addToSessions:(id)anObject
{
	[super addObject:@"Sessions" object:anObject];
}

- (void) addToTimeslots:(id)anObject
{
	[super addObject:@"Timeslots" object:anObject];
}

- (void) addToSpeakers:(id)anObject
{
	[super addObject:@"Speakers" object:anObject];
}

- (void) dealloc
{
	[ m_OData_etag release];
	m_OData_etag = nil;
	
	[m_Sessions release];
	m_Sessions = nil;
	[m_Timeslots release];
	m_Timeslots = nil;
	[m_Speakers release];
	m_Speakers = nil;

	[super dealloc];
}

@end
