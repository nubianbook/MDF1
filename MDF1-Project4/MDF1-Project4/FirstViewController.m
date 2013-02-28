//
//  FirstViewController.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

// pulling in all the files needed to process code
#import "FirstViewController.h"
#import "DataManager.h"
#import "Wine.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Places open very slow", @"Places open very slow");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    // this is th count variable to help shorten the list
    counterInt = 0;
    
    // creating the from the web service url
    url = [[NSURL alloc] initWithString:@"http://www.barnivore.com/wine.xml"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
}
    // Making the url connection
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // check if data is valid
    if (data != nil)
    {
        // add this to existing requestData
        DataManager *manager = [DataManager shareDataManager];
        NSMutableData *someData = manager.dataStore;
        [someData appendData:data];
    }
}

// this function is called once all data is loaded from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    DataManager *manager = [DataManager shareDataManager];
    NSMutableData *someData = manager.dataStore;
    
     xmlParser= [[NSXMLParser alloc] initWithData:someData];
    if (xmlParser != nil)
    {
        [xmlParser setDelegate:self];
        [xmlParser parse];
    }
}
    // identifying the contents to be parsed and string
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (!currentValue)
    {
        currentValue = [[NSMutableString alloc] initWithString:string];
    } else {
        [currentValue appendString:string];
    }
}
// Starting the parse procedure 
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if (counterInt <= 10)
    {
    if ([elementName isEqualToString:@"company"])
    {
        myWine = [[Wine alloc] init];
    }
    } else
    {
        [xmlParser abortParsing];
        [myTableView reloadData];
    }
    
}
    // implementing and pulling the parsed info
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if (counterInt <= 10)
    {
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    
    if ([elementName isEqualToString:@"company-name"])
    {
        [myWine setValue:currentValue forKey:@"companyName"];
        //currentValue = nil;
    }
    if ([elementName isEqualToString:@"city"])
    {
        [myWine setValue:currentValue forKey:elementName];
        currentValue = nil;
    }
    if ([elementName isEqualToString:@"address"])
    {
        [myWine setValue:currentValue forKey:@"theAddress"];
        currentValue = nil;
    }
    if ([elementName isEqualToString:@"email"])
    {
        [myWine setValue:currentValue forKey:elementName];
        currentValue = nil;
        
        
    }
    if ([elementName isEqualToString:@"company"])
    {
        [array addObject:myWine];
        NSLog(@"%d", array.count);
        counterInt ++;
    }
        currentValue = nil;
    }
    
}

-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    
    //Reloads table so it shows updated information
    [myTableView reloadData];
        
}

    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 // tableview - number of rows in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
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
    
    //static int count = 0;
    
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    cell.textLabel.text = [[array objectAtIndex:indexPath.row] companyName];
    
    cell.textLabel.font = [UIFont systemFontOfSize:16.0f];
  
    //count++;
    return cell;
    
}
// Here is what happens when one of the cells on tableview is selected
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DataManager *manager = [DataManager shareDataManager];
    NSMutableArray *array = manager.myArray;
    
    DetailViewController *myView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if (myView != nil)
   {
        myView.theCity = [[array objectAtIndex:indexPath.row] city];
        myView.theAddress = [[array objectAtIndex:indexPath.row] theAddress];
        myView.theEmail = [[array objectAtIndex:indexPath.row] email];
        
        [self.navigationController pushViewController:myView animated:true];
    }
    
    
}



@end
