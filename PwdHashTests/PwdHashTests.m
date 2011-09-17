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

- (void)testPwdHashGenerate
{
    NSString* hashedPassword = [PwdHash generate:@"test" url:@"google.com"];
    STAssertNotNil(hashedPassword, @"%@", @"hashedPassword is nil");
}

@end
