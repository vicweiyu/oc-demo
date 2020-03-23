//
//  Tester.m
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Tester.h"

@implementation Tester

-(id) init
{
    if (self = [super init]) {
        NSLog(@"Tester init...");
    }
    return self;
}

-(void) work
{
    [super work];
    NSLog(@"I am good at testing!");
}

@end
