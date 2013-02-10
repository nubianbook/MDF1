//
//  CustomTableCell.h
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/6/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *textLabel;
    IBOutlet UILabel *detailTextLabel;
    IBOutlet UILabel *subViewTetLabel;
    
}
@property (nonatomic, strong) IBOutlet UILabel *textLabel;
@property (nonatomic, strong) IBOutlet UILabel *detailTextLabel;
@property (nonatomic, strong) IBOutlet UILabel *subViewTextLabel;

@end
