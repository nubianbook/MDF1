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
    IBOutlet UILabel *detailLabelText;
    IBOutlet UITableView *mytableView;
    NSMutableArray *stringArray;
    NSMutableArray *stringDetailArray;
    NSArray *views;
    
    
    // variable for my top label
    DataPlannerView * *myTextLabel;
    DataPlannerView * myTitle;
    DataPlannerView * myDetail;
    
}

-(IBAction)onclickDelete:(id)sender;

@end
