//
//  Tire.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id)init
{
    if (self = [self initWithPressure:34.0 treadDepth:20.0]) {}
    return self;
}

- (id)initWithPressure:(float)p {
    if (self = [self initWithPressure:p treadDepth:20.0]) {}
    return self;
}

- (id)initWithTreadDepth:(float)td {
    if (self = [self initWithPressure:34.0 treadDepth:td]) {}
    return self;
}

#pragma mark Designated Initializer
- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    return self;
}

- (float)pressure {
    return pressure;
}

- (void)setPressure:(float)p {
    pressure = p;
}

- (float)treadDepth {
    return treadDepth;
}

- (void)setTreadDepth:(float)td {
    treadDepth = td;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"I am a Tire, my pressure is %.1f and my tread depth is %.1f", pressure, treadDepth];
}

- (void)dealloc
{
    NSLog(@"Tire dealloc");
    [super dealloc];
}

@end
