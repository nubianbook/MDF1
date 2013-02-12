//
//  ViewController.m
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/4/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"
#import "DataPlannerView.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // I'm creating the object that pulls from the data source
    myTitle = [[DataPlannerView alloc] init];
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Genesis", @"Exodus", @"Leviticus", @"Numbers", @"Deuteronomy", @"Joshua", @"Judges",  @"1 Samuel", @"2 Samuel", @"1 Kings", @"2 Kings", @"1 Chronicles", @"2 Chronicles", @"Ezra", @"Nehemiah", @"Esther", @"Job", @"The Psalms", @"Proverbs", @"Ecclesiastes", nil];
    //myDetail = [[DataPlannerView alloc] init];
   // Experimenting with the code
    stringDetailArray = [[NSMutableArray alloc] initWithObjects:@"The First book of Creation", @"Second Book", @"Third Book", @"Fourth Book", @"Fifth Book", @"Sixth Book", @"Seventh Book", @"Eight Book", @"Nine Book", @"Tenth Book", @"Eleventh Book", @"Twelveth Book", @"Thirteenth Book", @"Fourteen Book", @"Fifteenth Book", @"Sixteenth Book", @"Seventh Book", @"Eighteenth Book", @"Nineteenth Book", @"Twentieth Book", nil];
    //mySubView = [[DataPlannerView alloc] init];
    stringSubViewArray = [[NSMutableArray alloc] initWithObjects:@"The Creation", @"Leaving Egypt", @"Learning God's Law", @"Family Count Down", @"More History", @"Joshua's Army", @"The Leaders", @"A Prophets Story", @"Prophet's Story pt", @"King David & more", @"More about Kings", @"History pt3", @"History pt4", @"Who is Ezra", @"Who is Nehemiah", @"Who is Esther", @"Who is Job", @"The Songs of David", @"Wise Words", @"More Words of Wisdom", nil];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onclickDelete:(id)sender
{
    if ([deleteButton.titleLabel.text isEqual:@"Edit"])
    {
        [mytableView setEditing:true];
        [deleteButton setTitle:@"Clear" forState:(UIControlStateNormal)];
        
    } else {
        [deleteButton setTitle:@"Edit" forState:UIControlStateNormal];
        [mytableView setEditing:false];
    }
    
}

- (void)viewDidAppear:(BOOL)animated
{
    
    // this is feeding the text in both ipad and iphone
    topLabelText.text = [myTitle getInfo];
    //myTextLabel.text = []
    detailLabelText.text = [myDetail getDetail];
    _subView.text = [mySubView getSubView];
    [super viewDidAppear:animated];
}

// This is the number of rows I want to return
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{    // I will return an int because it is asking for numberofrows with the addition of stringArray count I can continue to add to the array if I specifically say return (a number)then I am constrained
    return [stringArray count];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
    // This area will allow the delete functionality to a cell
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


    // This allow me to know if the minus or delete has been pressed
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // This code is delete mode
        NSLog(@"we want to delete row=%d", indexPath.row);
        // Removes the object from the data array
        [stringArray removeObjectAtIndex:indexPath.row];
        
        [stringDetailArray removeObjectAtIndex:indexPath.row];
        
        [mytableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

// This function will allow me to feed every table row one at a time
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [mytableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
                                                              
        for (UIView *view in views)
        {
            
            if ([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
                cell.textLabel.text = [stringArray objectAtIndex:indexPath.row];
                cell.detailTextLabel.text = [stringDetailArray objectAtIndex:indexPath.row];
                cell.subViewTextLabel.text = [stringSubViewArray objectAtIndex:indexPath.row];
            }
        }
    }
    
    //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    
    return cell;

    
    // these four lines of open code will create grouped sections or single sections
    NSInteger actualRow = 0;
    actualRow = (indexPath.section * 5) + indexPath.row;
    if (indexPath.section == 0)
     {
     //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
     cell.detailTextLabel.text = (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
     }
     else if (indexPath.section == 1)
     {
     //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
     //cell.detailTextLabel.text = (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
     }
    static int count = 0; //I have to keep these lines for my project if I choose to use it
   //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:actualRow];
    cell.detailTextLabel.text = (NSString*)[stringDetailArray objectAtIndex:actualRow];
    // I will need that code at the bottom for my project indexPath
    //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
    count++; //I will need this for my project
    return cell;
    
}
// this area  will have to study because this area will allow me to select cells on the tableview
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [stringArray objectAtIndex:indexPath.row]);
    
    DetailViewController *myDetailController = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:nil];
    
    if (myDetailController != nil)
    {
        [self presentViewController:myDetailController animated:true completion:nil];
        myDetailController.detailLabel.text= (NSString*)[stringDetailArray objectAtIndex:indexPath.row];
        
    }

    
}

@end

