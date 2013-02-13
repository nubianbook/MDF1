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
    NSString *namesArray;
    NSMutableArray *stringArray;
    NSMutableArray *stringNameArray;
    NSMutableArray *stringDetailArray;
    NSMutableArray *stringinfoArray;
    NSMutableArray *stringURLArray;
}

-(IBAction)onClick:(id)sender;

@property (strong, nonatomic) UILabel *detailLabel;
@property (strong, nonatomic) UILabel *nameLabel;
@property (retain, nonatomic) UILabel *infoLabel;
@property (retain, nonatomic) UILabel *urlLabel;

@end
