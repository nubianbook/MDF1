//
//  BusinessInfo.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/19/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreLocation/CoreLocation.h"

@interface BusinessInfo : NSObject
{
    NSString *businessName;
    CLLocationCoordinate2D theLocation;
}

-(id)initWithName:(NSString*)name loc:(CLLocationCoordinate2D)loc;
@property (strong, nonatomic) NSString *businessName;
@property (assign, nonatomic) CLLocationCoordinate2D theLocation;

@end
