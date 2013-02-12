//
//  FirstViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()


@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Gardening", @"Gardening");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

							
- (void)viewDidLoad
{
    stringArray = [[NSMutableArray alloc] initWithObjects:@"String Beans", @"Squash", @"Gallery", nil];
    stringDetailArray = [[NSMutableArray alloc] initWithObjects:@"A Lot of good eating", @"Best Thing Since Watermelon", @"See My Garden", nil];
    stringNameArray = [[NSMutableArray alloc] initWithObjects:@"The String Bean Patch", @"A Whole Lot of Squash", @"See My Garden grow", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stringArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    static int count = 0;
    
    cell.textLabel.text = (NSString *)[stringArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
    count++;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d", indexPath.row);
    DetailViewController *myDetailController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    if (myDetailController != nil)
    {
        [self presentViewController:myDetailController animated:true completion:nil];
        myDetailController.detailLabel.text= (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
        myDetailController.nameLabel.text= (NSString*)[stringNameArray objectAtIndex:indexPath.row];
    }
}

-(IBAction)onclick:(id)sender
{
    // this creates the secondView controller to make sure it's valid then moves to the next one
    FirstViewController *beansView = [[FirstViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (beansView != nil)
    {
        // Moves to the second view
        [self.navigationController pushViewController:beansView animated:true];
    }

}



@end
