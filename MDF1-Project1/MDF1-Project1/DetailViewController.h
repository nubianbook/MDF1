//
//  DetailViewController.h
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/6/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *detailLabel;
}

@property (strong, nonatomic)  IBOutlet UILabel *detailLabel;

-(IBAction)onClose:(id)sender;



@end
