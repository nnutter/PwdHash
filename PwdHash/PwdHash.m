//
//  PwdHash.m
//  PwdHash
//
//  Created by Nathan Nutter on 9/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PwdHash.h"

@implementation PwdHash

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

+ (NSString*)generate:(NSString*)password
                  url:(NSString*)url
{
    NSLog(@"%@", password);
    NSLog(@"%@", url);
    
    return [password stringByAppendingString:url];
}

@end