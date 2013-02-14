//
//  DetailViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/12/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "DetailViewController.h"
#import "ThirdViewController.h"
#import "FirstViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize detailLabel;
@synthesize nameLabel;
@synthesize infoLabel;
@synthesize urlLabel;
@synthesize nextButton;

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)nextonClick:(id)sender
{
    
    NSLog(@"hit me");
   // [UIView beginAnimations:nil context:nil];
    {
        // this creates the secondView controller to make sure it's valid then moves to the next one
        FirstViewController *beansView = [[FirstViewController alloc] initWithNibName:@"ThirdView" bundle:nil];
        if (beansView != nil)
        {
            // Moves to the second view
            [self.navigationController pushViewController:beansView animated:true];            
            
        }else{
            NSLog(@"Button Failed");
        }
}

}

@end
