//
//  FirstViewController.h
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/11/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@class FirstViewController;

@interface FirstViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *mytableView;
    NSMutableArray *stringArray;
    NSMutableArray *stringNameArray;
    NSMutableArray *stringDetailArray;
}

-(IBAction)onclick:(id)sender;
@end
