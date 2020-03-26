//
//  Car.m
//  chapter9
//
//  Created by Yu WEI on 26/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id) init {
    if (self = [super init]) {
        NSLog(@"init:Car, RC:%lu", [self retainCount]);
    }
    return self;
}

-(void) dealloc {
    NSLog(@"dealloc:Car, RC:%lu", [self retainCount]);
    [engine release];
    [super dealloc];
}

-(Engine *) engine {
    return engine;
}

-(void) setEngine: (Engine *) newEngine {
    [newEngine retain];
    [engine release];
    engine = newEngine;
}

@end
