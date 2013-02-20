//
//  FirstViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//


#import "Mapkit/Mapkit.h"
#import "MyMapAnnotation.h"
#import "BusinessInfo.h"
#import "DataManager.h"
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
    BusinessInfo *info = [[BusinessInfo alloc] initWithName:@"God's House" loc:CLLocationCoordinate2DMake(42.3242f, -83.4003f)];
    BusinessInfo *info2 = [[BusinessInfo alloc] initWithName:@"Pizza House" loc:CLLocationCoordinate2DMake(42.2942f, -83.3100f)];
    BusinessInfo *info3 = [[BusinessInfo alloc] initWithName:@"Harry's Hardware" loc:CLLocationCoordinate2DMake(42.2814f, -83.3864f)];
    BusinessInfo *info4 = [[BusinessInfo alloc] initWithName:@"The Movies" loc:CLLocationCoordinate2DMake(42.3358f, -83.3311f)];
    BusinessInfo *info5 = [[BusinessInfo alloc] initWithName:@"WorkOut Station" loc:CLLocationCoordinate2DMake(42.2222f, -83.3967f)];
    BusinessInfo *info6 = [[BusinessInfo alloc] initWithName:@"The Fish Bowl" loc:CLLocationCoordinate2DMake(42.380022f, -83.41063f)];
    BusinessInfo *info7 = [[BusinessInfo alloc] initWithName:@"Ez Taxes" loc:CLLocationCoordinate2DMake(42.278713f, -83.41218f)];
    BusinessInfo *info8 = [[BusinessInfo alloc] initWithName:@"Grocery Store" loc:CLLocationCoordinate2DMake(42.328007f, -83.33102f)];
    BusinessInfo *info9 = [[BusinessInfo alloc] initWithName:@"Go Cheap Gas" loc:CLLocationCoordinate2DMake(42.425523f, -83.33415f)];
    BusinessInfo *info10 = [[BusinessInfo alloc] initWithName:@"The Book Store" loc:CLLocationCoordinate2DMake(42.280598f, -83.40283f)];
    
    
    DataManager *manager = [DataManager shareDataManager];
    if (manager != nil)
    {
        NSMutableArray *businesses = manager.businesses;
        [businesses addObject:info];
        [businesses addObject:info2];
        [businesses addObject:info3];
        [businesses addObject:info4];
        [businesses addObject:info5];
        [businesses addObject:info6];
        [businesses addObject:info7];
        [businesses addObject:info8];
        [businesses addObject:info9];
        [businesses addObject:info10];
    }
    
    [mapView2 addAnnotations: [NSMutableArray arrayWithObjects:info, info2, info3, info4, info5, info6, info7, info8, info9, info10, nil]];
    
    // Here I am setting my arrays for the UITableView individual cells
    stringArray = [[NSMutableArray alloc] initWithObjects:@"God's House", @"Pizza House", @"Harry's Hardware", @"The Movies", @"WorkOut Station", @"The Fish Bowl", @"Ez Taxes", @"Grocery Store", @"Go Cheap Gas", @"The Book Store", nil];
    
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
        //Grabs the property that we set in the DetailViewController, and gives that property a value.  The value is the object in stringArray that matches the cell that you clicked.
        
        [self presentViewController:myDetailController animated:true completion:nil];
        
    }
}


@end
