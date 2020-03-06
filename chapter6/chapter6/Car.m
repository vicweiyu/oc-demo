//
//  Car.m
//  chapter6
//
//  Created by PolyMac on 25/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car
/*
-(id) init
{
    if (self = [super init]) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return (self);
}
 */

-(Engine *) engine
{
    return (engine);
}
-(void) setEngine:(Engine *) newEngine
{
    engine = newEngine;
}
-(Tire *) tireAtIndex:(int) index
{
    if (index < 0 || index > 3) {
        NSLog(@"Incorrect Index: %d", index);
        exit(1);
    }
    return tires[index];
}
-(void) setTireAtIndex:(Tire *) newTire atIndex:(int) index
{
    if (index < 0 || index > 3) {
        NSLog(@"Incorrect Index: %d", index);
        exit(1);
    }
    tires[index] = newTire;
}

#pragma mark -

#pragma mark TODO

-(void) print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end
