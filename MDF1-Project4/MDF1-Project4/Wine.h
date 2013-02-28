//
//  Wine.h
//  MDF1-Project4
//
//  Created by Carol Gaylor on 2/27/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wine : NSObject
{
    // setting up the strings to be used from my XML file
    NSString *city;
    NSString *theAddress;
    NSString *email;
    NSString *companyName;
}

// setting up the properties to from my XML file
@property NSString *city;
@property NSString *theAddress;
@property NSString *email;
@property NSString *companyName;

// creating the method to be used to compose the above details
-(id)initWithName:(NSString*)place location:(NSString*)loc mail:(NSString*)contact name:(NSString*)compname;

@end
