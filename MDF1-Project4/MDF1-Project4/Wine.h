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
    NSString *city;
    NSString *theAddress;
    NSString *email;
    NSString *companyName;
}

@property NSString *city;
@property NSString *theAddress;
@property NSString *email;
@property NSString *companyName;

-(id)initWithName:(NSString*)place location:(NSString*)loc mail:(NSString*)contact name:(NSString*)compname;

@end
