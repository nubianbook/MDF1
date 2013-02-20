//
//  FirstViewController.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mapkit/Mapkit.h"
#import "DetailViewController.h"


@class MyMapAnnotation;

@interface FirstViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *mytableView;
    NSMutableArray *stringArray;
    
    
    MyMapAnnotation *title;
    MyMapAnnotation *coord;
}


@property CLLocationCoordinate2D *coordinate;
@property (strong, nonatomic) IBOutlet MKMapView *mapView2;


@end
