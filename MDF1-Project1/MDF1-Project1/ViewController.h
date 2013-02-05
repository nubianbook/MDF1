//
//  ViewController.h
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/4/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataPlannerView;


@interface ViewController : UIViewController
{
    IBOutlet UILabel *topLabelText;
    
    // variable for my top label
    DataPlannerView * myTitle;    
}

@end
