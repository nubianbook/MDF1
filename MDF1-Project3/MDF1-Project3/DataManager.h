//
//  DataManager.h
//  MDF1-Project3
//
//  Created by Carol Gaylor on 2/19/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    // this is the array for my singular datamanager file
    NSMutableArray *businesses;
    
}
// creating a static method for my singular to attach to
+(DataManager*)shareDataManager;
// creating the property array for businesses
@property (nonatomic, strong) NSMutableArray *businesses;
@end
