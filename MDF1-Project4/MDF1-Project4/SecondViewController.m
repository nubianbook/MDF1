//
//  SecondViewController.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

// pulling in the second view and the DataManager singalton 
#import "SecondViewController.h"
#import "DataManager.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Raw Data", @"Raw Data");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad:(BOOL)animated
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    // setting up the details for the XML information that is parsed to be displayed
    DataManager *manager = [DataManager shareDataManager];
    NSMutableData *someData = manager.dataStore;
    
    NSString *someString = [[NSString alloc] initWithData:someData encoding:NSASCIIStringEncoding];
    myTextView.text = someString;

    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
