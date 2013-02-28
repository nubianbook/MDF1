//
//  DetailViewController.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "DetailViewController.h"
#import "Wine.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize theCity;
@synthesize theAddress;
@synthesize theEmail;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSString *formattedInformation = [NSString stringWithFormat:@"%@ %@ %@", theAddress, theCity, theEmail];
    
    detailTextView.text = formattedInformation;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
