//
//  PwdHashTests.m
//  PwdHashTests
//
//  Created by Nathaniel Nutter on 9/16/11.
//  Copyright 2011 Nathaniel Nutter. All rights reserved.
//

#import "PwdHash.h"
#import "PwdHashTests.h"

@implementation PwdHashTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testGetHashedPasswordWithPasswordAndURL
{
    NSString* hashedPassword;
    
    NSMutableArray* tuples = [[NSMutableArray alloc] initWithObjects:
                              @"google.com", @"abcdefgh", @"Vxo4HErAvz",
                              @"google.com", @"abcdefg1", @"pOW9YxFMp5",
                              @"google.com", @"abcdefg!", @"r+XC9LUVHb",
                              nil];
    NSMutableIndexSet *indexSet = [NSMutableIndexSet indexSetWithIndex:0];
    [indexSet addIndex:1];
    [indexSet addIndex:2];
    
    while ([tuples count] > 0) {
        NSString* url = [tuples objectAtIndex:0];
        NSString* password = [tuples objectAtIndex:1];
        NSString* correctPassword = [tuples objectAtIndex:2];
        [tuples removeObjectsAtIndexes:indexSet];
        
        hashedPassword = [PwdHash getHashedPasswordWithPasswordAndURL:password url:url];
        STAssertTrue([hashedPassword isEqualToString:correctPassword],
                     @"hashedPassword = %@ for Password = %@ and URL = %@ is %@",
                     hashedPassword, password, url, correctPassword);
    }

}

@end
