//
//  SecondViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "SecondViewController.h"
#import "MapKit/MapKit.h"
#import "MyMapAnnotation.h"
#import "BusinessInfo.h"
#import "DataManager.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize businessesArray;
@synthesize place;
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
    
   
    
    // Here I am creating the variable for my instance
   /* CLLocationCoordinate2D godshouseLocation;
    godshouseLocation.latitude = 42.3242f;
    godshouseLocation.longitude = -83.4003f;
    
    CLLocationCoordinate2D pizzaLocation;
    pizzaLocation.latitude = 42.2942f;
    pizzaLocation.longitude = -83.3100f;
    
    CLLocationCoordinate2D hardwareLocation;
    hardwareLocation.latitude = 42.2814f;
    hardwareLocation.longitude = -83.3864f;
    
    CLLocationCoordinate2D moviesLocation;
    moviesLocation.latitude = 42.3358f;
    moviesLocation.longitude = -83.3311f;
    
    CLLocationCoordinate2D workoutLocation;
    workoutLocation.latitude = 42.2222f;
    workoutLocation.longitude = -83.3967f;
    
    CLLocationCoordinate2D fishLocation;
    fishLocation.latitude = 42.380022f;
    fishLocation.longitude = -83.41063f;
    
    CLLocationCoordinate2D taxesLocation;
    taxesLocation.latitude = 42.278713f;
    taxesLocation.longitude = -83.41218f;
    
    CLLocationCoordinate2D groceryLocation;
    groceryLocation.latitude = 42.328007f;
    groceryLocation.longitude = -83.33102f;
    
    CLLocationCoordinate2D gasLocation;
    gasLocation.latitude = 42.425523f;
    gasLocation.longitude = -83.33415f;
    
    CLLocationCoordinate2D booksLocation;
    booksLocation.latitude = 42.280598f;
    booksLocation.longitude = -83.40283f;
    
    
    // Here I am creating an instance of MyMapAnnotation
    MyMapAnnotation *annotation = [[MyMapAnnotation alloc] initWithTitle:@"God's House" cood:godshouseLocation];
    MyMapAnnotation *annotation2 = [[MyMapAnnotation alloc] initWithTitle:@"Pizza House" cood:pizzaLocation];
    MyMapAnnotation *annotation3 = [[MyMapAnnotation alloc] initWithTitle:@"Harry's Hardware" cood:hardwareLocation];
    MyMapAnnotation *annotation4 = [[MyMapAnnotation alloc] initWithTitle:@"WorkOut Station " cood:workoutLocation];
    MyMapAnnotation *annotation5 = [[MyMapAnnotation alloc] initWithTitle:@"The Movies" cood:moviesLocation];
    MyMapAnnotation *annotation6 = [[MyMapAnnotation alloc] initWithTitle:@"The Fish Bowl" cood:fishLocation];
    MyMapAnnotation *annotation7 = [[MyMapAnnotation alloc] initWithTitle:@"EZ Taxes" cood:taxesLocation];
    MyMapAnnotation *annotation8 = [[MyMapAnnotation alloc] initWithTitle:@"Grocery Store" cood:groceryLocation];
    MyMapAnnotation *annotation9 = [[MyMapAnnotation alloc] initWithTitle:@"Go Cheap Gas" cood:gasLocation];
    MyMapAnnotation *annotation10 = [[MyMapAnnotation alloc] initWithTitle:@"Book Store" cood:booksLocation];
    
    [mapView2 addAnnotations:[NSArray arrayWithObjects:annotation, annotation2, annotation3, annotation4, annotation5, annotation6, annotation7, annotation8, annotation9, annotation10, nil]];*/
    
    [mapView2 setRegion:region animated:true];
    
    //[mapView2 removeAnnotations:mapView2.annotations];
    
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
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

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
