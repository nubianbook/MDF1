//
//  FirstViewController.h
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//
// importing the Wine class 
#import <UIKit/UIKit.h>
#import "Wine.h"

// Pulling in the delegates
@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, NSURLConnectionDelegate, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
{
    // outlets - parser - request - mutableData - strings variable setup
    IBOutlet UITableView *myTableView;
   
    NSXMLParser *xmlParser;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    NSMutableString *currentValue;
    NSString *cityName;
    Wine *myWine;
    int counterInt;
    
}




@end
