//
//  MyMapAnnotation.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "MyMapAnnotation.h"

@implementation MyMapAnnotation
// sync my properties
@synthesize title;
@synthesize coordinate;

// setting the details for my map display 
-(id)initWithTitle:(NSString*)text cood:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}


@end
