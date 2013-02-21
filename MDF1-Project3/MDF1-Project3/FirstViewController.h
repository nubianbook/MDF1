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

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *mytableView;
    IBOutlet UIButton *deleteButton;
    NSMutableArray *stringArray;
    
    
    MyMapAnnotation *title;
    MyMapAnnotation *coord;
}

-(IBAction)deleteOnClick:(id)sender;
@property CLLocationCoordinate2D *coordinate;
@property (strong, nonatomic) IBOutlet MKMapView *mapView2;


@end
