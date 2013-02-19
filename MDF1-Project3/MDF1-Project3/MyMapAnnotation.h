//
//  MyMapAnnotation.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mapkit/Mapkit.h"

@interface MyMapAnnotation : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}

-(id)initWithTitle:(NSString*)text cood:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;


@end
