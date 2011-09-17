//
//  PwdHash.h
//  PwdHash
//
//  Created by Nathaniel Nutter on 9/16/11.
//  Copyright 2011 Nathaniel Nutter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PwdHash : NSObject

+ (NSString*)generate:(NSString*)password
                  url:(NSString*)url;

@end
