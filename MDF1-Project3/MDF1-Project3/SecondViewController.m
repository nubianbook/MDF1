//
//  SecondViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//
// importing the my class files - singular - and view controller files 
#import "SecondViewController.h"
#import "MapKit/MapKit.h"
#import "MyMapAnnotation.h"
#import "BusinessInfo.h"
#import "DataManager.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

// sync my properties
@synthesize businessesArray;
@synthesize locationArray;
@synthesize annotationArray;
@synthesize mapView2;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"All Businesses List", @"All Businesses List");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    // this group sets my span and zoom levels
    MKCoordinateSpan span;
    span.latitudeDelta = 0.2f;
    span.longitudeDelta = 0.2f;
    // this group sets my lat and long that I want my map centered on
    CLLocationCoordinate2D location;
    location.latitude = 42.3242f;
    location.longitude = -83.4003f;
    // this is the area the pulls all the previous details together and set in the mapView
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView2.region = region;
    
    
    [mapView2 setRegion:region animated:true];
    DataManager *dataManager = [DataManager shareDataManager];
    NSMutableArray *data = dataManager.businesses;
    
   // looping through my array 1 checking to see which one works
    for (int x = 0; x < [data count]; x++)
    {
        MyMapAnnotation *mapAnnotation = [[MyMapAnnotation alloc] initWithTitle:[[data objectAtIndex:x] businessName] cood:[[data objectAtIndex:x] theLocation]];
        
        
        if (mapAnnotation != nil)
        {
            [mapView2 addAnnotation:mapAnnotation];
        }
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// looping through my array to test again checking to see which works
- (void)viewDidAppear:(BOOL)animated
{
    [mapView2 removeAnnotations:mapView2.annotations];
    DataManager *dataManager = [DataManager shareDataManager];
    
    NSMutableArray *data = dataManager.businesses;
    
    for (int x = 0; x < [data count]; x++)
    {
        MyMapAnnotation *mapAnnotation = [[MyMapAnnotation alloc] initWithTitle:[[data objectAtIndex:x] businessName] cood:[[data objectAtIndex:x] theLocation]];
        
        
        if (mapAnnotation != nil)
        {
            [mapView2 addAnnotation:mapAnnotation];
        }
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
