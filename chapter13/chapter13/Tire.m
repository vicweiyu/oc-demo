//
//  Tire.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id)init {
    return [self initWithPressure:20 treadDepth:35];
}

- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super init]) {
        NSLog(@"Tire init...");
        self.pressure = p;
        self.treadDepth = td;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Tire *tireCopy = [[[self class] allocWithZone:zone] initWithPressure:self.pressure treadDepth:self.treadDepth];
    return tireCopy;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"I am a Normal Tire: %.1f %.1f", self.pressure, self.treadDepth];
}

@end
