//
//  DetailViewController.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//
// pulling in my mapkit and businessInfo file
#import <UIKit/UIKit.h>
#import "Mapkit/Mapkit.h"
#import "BusinessInfo.h"

@interface DetailViewController : UIViewController
{
    //my button-label-string variables and outlets
    IBOutlet MKMapView *mapView;
    IBOutlet UIButton *backButton;
    IBOutlet UILabel *_businessName;
    IBOutlet UILabel *_location;
    
    NSString *nameOfBusiness;
    CLLocationCoordinate2D locationOfBusiness;
}

-(IBAction)backOnclick:(id)sender;
//properties for businessName and location
@property (strong) IBOutlet MKMapView *mapView;
@property (strong) IBOutlet UILabel *_businessName;
@property (strong) IBOutlet UILabel *_location;
//Create a property that will hold information from the table view
@property (strong, nonatomic) NSString *nameString;
@property (nonatomic, retain) BusinessInfo *info;

@property (copy) NSString *nameOfBusiness;
@property CLLocationCoordinate2D locationOfBusiness;


@end
