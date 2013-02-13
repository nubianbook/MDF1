//
//  FirstViewController.m
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"


@interface FirstViewController ()



@end


@implementation FirstViewController

@synthesize detailLabel;
@synthesize nameLabel;
@synthesize infoLabel;
@synthesize urlLabel;

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
    stringArray = [[NSMutableArray alloc] initWithObjects:@"String Beans", @"Squash", nil];
    stringDetailArray = [[NSMutableArray alloc] initWithObjects:@"1. Wait for warmth:  Beans like warm soil and air. 2.	Prepare your seeds:  Soak seeds in water for 30 minutes before planting for better germination. 3.	Water wisely:  Beans need an adequate and regular supply of water. 4.	Plant them snug:  Crowding beans close together can still yield a good crop. 5.	Rotate! Rotating crops every year help prevent certain crop diseases. 6. Weed!  Beans have shallow roots, that can quickly lose a fight for moisture and nutrients to weeds. 7.	Mulch!  Mulch help keep moisture around the shallow roots during the hot summer months 8. Pick often!  Regular picking is the number one way to prolong a bean harvest. 9. Be Cool!  If you notice a stall in the bean harvest after a hot spell no worries as the heat cool off the plants will re – pollinate themselves.  10.	Plant in waves:  Plant 10 to 15 foot long rows every two to three weeks to have beans all throughout the season.", @"Yellow squash are buttery yellow, some with elongated necks others with crooked neck.                                                    Zucchini squash produce large crops of club shaped fruits.                                               These can be seen in various shades of deep yellows and greens.                                                                                                                 Round and oval squash sometimes produce small compact individual serving size fruit.                                                              Pattypan squash produce large crops of plump scalloped edged, flyer saucer looking fruits that can be found in stripped bright yellow.                                                                                   The best time to plant is in the spring an after the frost.  And try to plant them in raised beds or prepared hills.  Plant seeds at least 8 inches apart", nil];
    stringNameArray = [[NSMutableArray alloc] initWithObjects:@"10 String Bean Tips", @"Squash Types to Try & Tips", nil];
    stringinfoArray = [[NSMutableArray alloc] initWithObjects:@"Harrar, S. (1995). Super easy string beans. Organic Gardening (08973792), 42(5), 54.", @"Pleasant, B. (2012). All About SUMMER SQUASH. Mother Earth News, (252), 70-72.", nil];
    stringURLArray = [[NSMutableArray alloc] initWithObjects:@"", @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=75333336&site=ehost-live", nil];
    
    
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
        myDetailController.infoLabel.text= (NSString*)[stringinfoArray objectAtIndex:indexPath.row];
    }
}


-(IBAction)onClick:(id)sender
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
