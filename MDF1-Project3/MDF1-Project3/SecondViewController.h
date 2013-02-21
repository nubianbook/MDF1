//
//  SecondViewController.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
#import "MyMapAnnotation.h"


@interface SecondViewController : UIViewController
{
    IBOutlet MKMapView *mapView2;
    NSString *place;
    NSString *locationArray;
    NSMutableArray *businessesArray;
    MyMapAnnotation *annotation;
}


@property (retain) NSString *place;
@property (assign) NSString *locationArray;
@property (assign)NSMutableArray *annotationArray;
@property (nonatomic, strong) NSMutableArray *businessesArray;
@property (strong, nonatomic) IBOutlet MKMapView *mapView2;


@end
