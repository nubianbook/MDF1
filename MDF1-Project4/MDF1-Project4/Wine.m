//
//  Wine.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/27/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "Wine.h"

@implementation Wine

@synthesize city;
@synthesize theAddress;
@synthesize email;
@synthesize companyName;

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
