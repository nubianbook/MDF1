//
//  BusinessInfo.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/19/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>
// pulling in the corelocation framework
#import "CoreLocation/CoreLocation.h"

@interface BusinessInfo : NSObject
{
    // setting up the string and coordinate variables
    NSString *businessName;
    CLLocationCoordinate2D theLocation;
}
// creating a method to run the businessNames and location in the detail view
-(id)initWithName:(NSString*)name loc:(CLLocationCoordinate2D)loc;
// creating the properties for display in the detail viewer
@property (strong, nonatomic) NSString *businessName;
@property (assign, nonatomic) CLLocationCoordinate2D theLocation;

@end
