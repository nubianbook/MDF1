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
    IBOutlet UIButton *deleteButton;
    NSMutableArray *stringArray;
    NSMutableArray *stringDetailArray;
    NSMutableArray *stringSubViewArray;
    NSArray *views;
    
    
    // variable for my top label
    DataPlannerView * *myTextLabel;
    DataPlannerView * myTitle;
    DataPlannerView * myDetail;
    DataPlannerView * mySubView;

    
}

@property (nonatomic, strong) IBOutlet UILabel *subView;

-(IBAction)onclickDelete:(id)sender;

@end
