//
//  Engine.m
//  chapter9
//
//  Created by Yu WEI on 26/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Engine.h"

@implementation Engine

-(id) init {
    if (self = [super init]) {
        NSLog(@"init:Engine, RC:%lu", [self retainCount]);
    }
    return self;
}

-(void) dealloc {
    NSLog(@"dealloc:Engine, RC:%lu", [self retainCount]);
    [super dealloc];
}

@end
