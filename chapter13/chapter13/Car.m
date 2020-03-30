//
//  Car.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car

- (id)init {
    if (self = [super init]) {
        NSLog(@"Car init...");
        tires = [[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
}

- (Tire *)tireAtIndex:(NSInteger)index {
    return [tires objectAtIndex:index];
}

- (void)setTire:(Tire *)tire atIndex:(NSInteger)index {
    [tires replaceObjectAtIndex:index withObject:tire];
}

- (void)print {
    NSLog(@"%@ has:", self.name);
    NSLog(@"%@", self.engine);
    for (NSInteger i = 0; i < 4; i++) {
        NSLog(@"%@", [self tireAtIndex:i]);
    }
}

- (id)copyWithZone:(NSZone *)zone {
    Car *carCopy = [[[self class] allocWithZone:zone] init];
    
    carCopy.name = self.name;
    
    Engine *engineCopy = [self.engine copy];
    carCopy.engine = engineCopy;
    
    for (NSInteger i = 0; i < 4; i++) {
        Tire *tireCopy = [[tires objectAtIndex:i] copy];
        [carCopy setTire:tireCopy atIndex:i];
    }
    
    return carCopy;
}

- (void)race {
    NSLog(@"race");
}

- (void)funcR {
    NSLog(@"funcR");
}

@end
