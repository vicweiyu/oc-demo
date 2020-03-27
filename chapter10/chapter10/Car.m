//
//  Car.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car

- (id)init
{
    if (self = [super init]) {
        NSLog(@"Car init");
        tires = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
}

- (Engine *)engine {
    return engine;
}

- (void)setEngine:(Engine *)newEngine {
    [newEngine retain];
    [engine release];
    engine = newEngine;
}

- (Tire *)tireAtIndex:(int)index {
    return [tires objectAtIndex:index];
}

- (void)setTire:(Tire *)newTire atIndex:(int)index {
    [tires replaceObjectAtIndex:index withObject:newTire];
}

- (void)print {
    NSLog(@"%@", engine);
    for (Tire *tire in tires) {
        NSLog(@"%@", tire);
    }
}

- (void)dealloc {
    NSLog(@"Car dealloc");
    [engine release];
    [tires release];
    [super dealloc];
}

@end
