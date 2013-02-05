//
//  ViewController.m
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/4/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"
#import "DataPlannerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // I'm creating the object that pulls from the data source
    myTitle = [[DataPlannerView alloc] init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    // this is feeding the text in both ipad and iphone
    topLabelText.text = [myTitle getInfo];
    [super viewDidAppear:animated];
}

@end

