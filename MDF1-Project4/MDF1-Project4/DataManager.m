//
//  DataManager.m
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/27/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize dataStore;
@synthesize myArray;
@synthesize cityName;

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
        dataStore = [[NSMutableData alloc] init];
        myArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

@end
