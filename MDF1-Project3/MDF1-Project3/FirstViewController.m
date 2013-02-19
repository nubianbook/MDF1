//
//  FirstViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//


#import "Mapkit/Mapkit.h"
#import "FirstViewController.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController


@synthesize coordinate;
@synthesize mapView2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"The List", @"The List");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    stringArray = [[NSMutableArray alloc] initWithObjects:@"God's House", @"Pizza House", @"Harry's Hardware", @"The Movies", @"Work Out Station", @"The Fish Bowl", @"Ez Taxes", @"Grocery Store", @"Go Cheap Gas", @"The Book Store", nil];
    stringMapArray = [[NSMutableArray alloc] initWithObjects:@"", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// tableview - number of rows in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stringArray count];
    
}

// tableview - indexpath to which cell path
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
        
    }
}


@end
