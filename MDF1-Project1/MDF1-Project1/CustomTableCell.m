//
//  CustomTableCell.m
//  MDF1-Project1
//
//  Created by Carol Gaylor on 2/6/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize subViewTextLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}





@end
