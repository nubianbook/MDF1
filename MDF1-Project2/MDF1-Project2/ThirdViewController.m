//
//  ThirdViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"



@interface ThirdViewController ()

@end

@implementation ThirdViewController

// Title and image display on the UITabbar
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
        self.title = NSLocalizedString(@"Squash", @"Squash");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
 
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Link to the website
-(IBAction)link
{
    [[UIApplication sharedApplication]
     
     openURL:[NSURL URLWithString:@"http://www.foodnetwork.com/recipe-collections/spaghetti-squash/index.html"]];
}

-(IBAction)onClick:(id)sender
{
	
    // this creates the secondView controller to make sure it's valid then moves to the next one
    ThirdViewController *thirdView = [[ThirdViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    if (thirdView != nil)
    {
        // Moves to the view
        [self.navigationController pushViewController:thirdView animated:true];
        
    }
    
}


@end
