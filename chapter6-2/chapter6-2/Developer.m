//
//  Developer.m
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Developer.h"

@implementation Developer

-(id) init
{
    if (self = [super init]) {
        NSLog(@"Developer init...");
    }
    return self;
}

-(void) work
{
    [super work];
    NSLog(@"I am good at coding!");
}

@end
