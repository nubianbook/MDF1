//
//  BusinessInfo.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/19/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "BusinessInfo.h"

@implementation BusinessInfo
// sync the properties
@synthesize businessName;
@synthesize theLocation;

// setting this method for display
-(id)initWithName:(NSString*)name loc:(CLLocationCoordinate2D)loc
{
    if ((self = [super init]))
    {
        businessName = name;
        theLocation = loc;
    }
    return self;
}

@end