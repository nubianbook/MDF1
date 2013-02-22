//
//  FirstViewController.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/18/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

// pulling in all the files needed to process code
#import "Mapkit/Mapkit.h"
#import "MyMapAnnotation.h"
#import "BusinessInfo.h"
#import "DataManager.h"
#import "FirstViewController.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

// sync properties from my header file
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
	// my business info and coordinates
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
    DataManager *dataManager = [DataManager shareDataManager];
    
    NSMutableArray *array = dataManager.businesses;
    
    
    
    return [array count];
    
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
    
    //Instead of using string array, create an instance of the data manager, create a mutable array to hold the array inside data manager, set instead of string array, use the array just created
    
    DataManager *dataManager = [DataManager shareDataManager];
    
    NSMutableArray *dataArray = dataManager.businesses;
    
    cell.textLabel.text = [[dataArray objectAtIndex:indexPath.row] businessName];
    
    count++;
    return cell;
}
    // Here is for what happens when one of the cells on tableview is selected
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d", indexPath.row);
    
    DetailViewController *myDetailController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    DataManager *dataManager = [DataManager shareDataManager];
    
    NSMutableArray *array = dataManager.businesses;
    
    if (myDetailController != nil)
    {
        //Grabs the property that set in the DetailViewController, and gives that property a value.  The value is the object in stringArray that matches the cell that I clicked.
        BusinessInfo *info = [[DataManager shareDataManager].businesses objectAtIndex:indexPath.row];
        
        myDetailController.nameOfBusiness = [[array objectAtIndex:indexPath.row] businessName];
        
        myDetailController.locationOfBusiness = [[array objectAtIndex:indexPath.row] theLocation];
        
        [self presentViewController:myDetailController animated:true completion:nil];
        myDetailController.info = info;
    }
}

    // this is to assist in the delete function
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


    // This area is also assisting in deleting from my tableview as well as from my all the business view
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // This code is delete mode
        NSLog(@"we want to delete row=%d", indexPath.row);
        // Removes the object from the data array
        
        DataManager *dataManager = [DataManager shareDataManager];
        
        NSMutableArray *businessesArray = dataManager.businesses;
        
        NSLog(@"%d", businessesArray.count);
        [businessesArray removeObjectAtIndex:indexPath.row];
        NSLog(@"%d", businessesArray.count);
        [mytableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
        
    }
}
    // This area is giving the button it's appearance and functionality
-(IBAction)deleteOnClick:(id)sender
{
    if ([deleteButton.titleLabel.text isEqual:@"Delete"])
    {
        [mytableView setEditing:true];
        [deleteButton setTitle:@"Clear" forState:UIControlStateNormal];
    } else {
        [deleteButton setTitle:@"Delete" forState:UIControlStateNormal];
        [mytableView setEditing:false];
    }
}


@end
