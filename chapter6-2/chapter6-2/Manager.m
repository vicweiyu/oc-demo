//
//  Manager.m
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(id) init
{
    if (self = [super init]) {
        NSLog(@"Manager init...");
    }
    return self;
}

-(void) work
{
    [super work];
    NSLog(@"I am good at managment!");
}

@end
