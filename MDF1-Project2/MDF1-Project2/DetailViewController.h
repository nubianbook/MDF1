//
//  DetailViewController.h
//  MDF1-Project2
//
//  Created by Carol Gaylor on 2/12/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *detailLabel;
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *infoLabel;
    IBOutlet UILabel *urlLabel;
    IBOutlet UIBarItem *nextButton;
}


-(IBAction)onClose:(id)sender;
-(IBAction)nextonClick:(id)sender;


@property (strong, nonatomic)  IBOutlet UILabel *detailLabel;
@property (strong, nonatomic)  IBOutlet UILabel *nameLabel;
@property (strong, nonatomic)  IBOutlet UILabel *infoLabel;
@property (strong, nonatomic)  IBOutlet UILabel *urlLabel;
@property (strong, nonatomic)  IBOutlet UIBarItem *nextButton;

@end
