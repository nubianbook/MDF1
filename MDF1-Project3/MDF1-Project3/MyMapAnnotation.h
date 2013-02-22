//
//  MyMapAnnotation.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>
// pulling in my map frameworks
#import "Mapkit/Mapkit.h"

@interface MyMapAnnotation : NSObject <MKAnnotation>
{
    // this is my string - coordiante variables
    NSString *title;
    CLLocationCoordinate2D coordinate;
}
// method designed to set up my text and coordinate for display
-(id)initWithTitle:(NSString*)text cood:(CLLocationCoordinate2D)coord;
// properties set up for display
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;


@end
