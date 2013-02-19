//
//  FourthViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "FourthViewController.h"


@interface FourthViewController ()

@end

@implementation FourthViewController
// Title and image display on the UITabbar
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"Garden Pics", @"Garden Pics");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Link to website
-(IBAction)link
{
    [[UIApplication sharedApplication]
     
     openURL:[NSURL URLWithString:@"http://www.veggiegardeningtips.com"]];
}

-(IBAction)onClick:(id)sender
{
// this creates the secondView controller to make sure it's valid then moves to the next one

    FourthViewController *fourthView = [[FourthViewController alloc] initWithNibName:@"ThirdView" bundle:nil];
if (fourthView != nil)
{
    // Moves to the view
    [self.navigationController pushViewController:fourthView animated:true];
    
}
    
}




@end
