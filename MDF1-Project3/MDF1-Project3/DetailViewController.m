//
//  DetailViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "DetailViewController.h"
#import "MyMapAnnotation.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize mapView, nameString, info, _businessName, _location, nameOfBusiness, locationOfBusiness;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    MyMapAnnotation *annotation = [[MyMapAnnotation alloc]initWithTitle:info.businessName cood:info.theLocation];
    [mapView addAnnotation:annotation];
}

- (void)viewDidLoad
{
    // this group sets my span and zoom levels
    MKCoordinateSpan span;
    span.latitudeDelta = 0.2f;
    span.longitudeDelta = 0.2f;
    // this group sets my lat and long that I want my map centered on
        // this is the area the pulls all the previous details together and set in the mapView
    MKCoordinateRegion region;
    region.center = locationOfBusiness;
    region.span = span;
    mapView.region = region;
    
    _businessName.text = nameOfBusiness;
    
    _location.text = [NSString stringWithFormat:@"%f lat, %f lon", locationOfBusiness.latitude, locationOfBusiness.longitude];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"%@", nameString);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backOnclick:(id)sender
{
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

@end
