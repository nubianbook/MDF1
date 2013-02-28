//
//  FirstViewController.h
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, NSURLConnectionDelegate, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
{
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
