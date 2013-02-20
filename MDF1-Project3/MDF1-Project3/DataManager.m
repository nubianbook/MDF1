//
//  DataManager.m
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/19/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize businesses;

static DataManager* _shareDataManager = nil;

+(DataManager*)shareDataManager
{
    if (!_shareDataManager)
    {
        _shareDataManager = [[self alloc] init];
    }
    return _shareDataManager;
}

-(id)init
{
    if ((self = [super init]))
    {
        businesses = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
