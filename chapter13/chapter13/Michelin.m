//
//  Michelin.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Michelin.h"

@implementation Michelin

- (id)init {
    return [self initWithParams:20 treadDepth:35 rainHandling:200 snowHandling:150];
}

- (id)initWithParams:(float)p treadDepth:(float)td rainHandling:(float)rh snowHandling:(float)sh {
    if (self = [super initWithPressure:p treadDepth:td]) {
        NSLog(@"Michelin init...");
        self.rainHandling = rh;
        self.snowHandling = sh;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Michelin *michelinCopy = [super copyWithZone:zone];
    michelinCopy.rainHandling = self.rainHandling;
    michelinCopy.snowHandling = self.snowHandling;
    return michelinCopy;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"I am a Michelin Tire: %.1f / %.1f / %.1f / %.1f", self.pressure, self.treadDepth, self.rainHandling, self.snowHandling];
}

@end
