//
//  SecondViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//


#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"String Beans", @"String Beans");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)link
{
    [[UIApplication sharedApplication]
     
     openURL:[NSURL URLWithString:@"http://www.foodnetwork.com/recipes/sunny-anderson/second-day-turkey-and-string-bean-pot-pies-recipe/index.html"]];
}


/*-(IBAction)onClick:(id)sender
{
    // this creates the secondView controller to make sure it's valid then moves to the next one
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    if (secondView != nil)
    {
        // Moves to the second view
        [self.navigationController pushViewController:secondView animated:true];
        
    }
}*/
@end
