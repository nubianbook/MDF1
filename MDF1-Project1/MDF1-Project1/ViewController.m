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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // I'm creating the object that pulls from the data source
    myTitle = [[DataPlannerView alloc] init];
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Genesis", @"Exodus", @"Numbers", @"Deuteronomy", @"Joshua", @"Judges",  @"1 Samuel", @"2 Samuel", @"1 Kings", @"2 Kings", @"1 Chronicles", @"2 Chronicles", @"Ezra", @"Nehemiah", @"Esther", @"Job", @"The Psalms", @"Proverbs", @"Ecclesiastes", @"Song of Solomon", nil];
    
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
    [mytableView setEditing:true];
}

- (void)viewDidAppear:(BOOL)animated
{
    
    // this is feeding the text in both ipad and iphone
    topLabelText.text = [myTitle getInfo];
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
        
        [mytableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

// This function will allow me to feed every table row one at a time
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [mytableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
                                                              
        for (UIView *view in views)
        {
            
            if ([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                cell.textLabel.text = [stringArray objectAtIndex:indexPath.row];
            }
        }
    }
    
    //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    
    return cell;

    
    // these four lines of open code will create grouped sections
    NSInteger actualRow = 0;
    actualRow = (indexPath.section * 5) + indexPath.row;
    if (indexPath.section == 0)
     {
     cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
     }
     else if (indexPath.section == 1)
     {
     cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
     }
    static int count = 0; //I have to keep these lines for my project if I choose to use it
    cell.textLabel.text = (NSString*)[stringArray objectAtIndex:actualRow];
    // I will need that code at the bottom for my project indexPath
    cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
   
    count++; //I will need this for my project
    return cell;
    
}
// this area  will have to study because this area will allow me to select cells on the tableview
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [stringArray objectAtIndex:indexPath.row]);
}

@end

