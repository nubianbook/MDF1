//
//  FirstViewController.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
// importing the mapkit framework and my DetailViewController 
#import "Mapkit/Mapkit.h"
#import "DetailViewController.h"

// my class the contain my map info
@class MyMapAnnotation;

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    // outlets and array variables
    IBOutlet UITableView *mytableView;
    IBOutlet UIButton *deleteButton;
    NSMutableArray *stringArray;
    
    
    MyMapAnnotation *title;
    MyMapAnnotation *coord;
}

// button function
-(IBAction)deleteOnClick:(id)sender;
// coordinate properties
@property CLLocationCoordinate2D *coordinate;
@property (strong, nonatomic) IBOutlet MKMapView *mapView2;


@end
