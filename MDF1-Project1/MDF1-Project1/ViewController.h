//
//  ViewController.h
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/4/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataPlannerView;


@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UILabel *topLabelText;
    IBOutlet UITableView *mytableView;
    NSMutableArray  *stringArray;
    NSArray *views;
    
    // variable for my top label
    DataPlannerView * myTitle;    
}

-(IBAction)onclickDelete:(id)sender;

@end
