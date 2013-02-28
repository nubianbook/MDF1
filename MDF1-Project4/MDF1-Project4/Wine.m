//
//  Wine.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/27/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

// pulling in my class file
#import "Wine.h"

@implementation Wine

// sync properties from my header file
@synthesize city;
@synthesize theAddress;
@synthesize email;
@synthesize companyName;

// method that gives the properties from my XML file value
-(id)initWithName:(NSString*)place location:(NSString*)loc mail:(NSString*)contact name:(NSString *)compname
{
    if ((self = [super init]))
    {
        city = place;
        theAddress = loc;
        email = contact;
        companyName = compname;
    }
    return self;
}

@end
