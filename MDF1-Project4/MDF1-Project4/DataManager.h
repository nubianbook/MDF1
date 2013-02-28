//
//  DataManager.h
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/27/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    // my main singalton variables
    NSMutableData *dataStore;
    NSMutableArray *myArray;
    NSString *cityName;
}

// singalton properties
@property NSMutableData *dataStore;
@property NSMutableArray *myArray;
@property NSString *cityName;

// my static method
+(DataManager*)shareDataManager;

@end
