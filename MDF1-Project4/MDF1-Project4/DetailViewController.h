//
//  DetailViewController.h
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/24/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UITextView *detailTextView;
    NSString *theCity;
    NSString *theAddress;
    NSString *theEmail;
}

@property NSString *theCity;
@property NSString *theAddress;
@property NSString *theEmail;


@end
