//
//  main.m
//  chapter5
//
//  Created by PolyMac on 25/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject

@end

@implementation Engine
-(NSString *) description
{
    return @"I am a Engine";
}
@end

@interface V8 : Engine

@end

@implementation V8

-(NSString *) description
{
    return @"I am a V8 Engine";
}

@end

@interface Tire : NSObject

@end

@implementation Tire
-(NSString *) description
{
    return @"I am a Tire";
}
@end

@interface SoftTire : Tire

@end

@implementation SoftTire

-(NSString *) description
{
    return @"I am a Soft Tire";
}

@end

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
-(Engine *) engine;
-(void) setEngine:(Engine *) newEngine;
-(Tire *) tireAtIndex:(int) index;
-(void) setTireAtIndex:(Tire *) newTire atIndex:(int) index;
-(void) print;
@end

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

-(void) print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        [car setEngine:[V8 new]];
        for (int i = 0; i < 4; i++) {
            [car setTireAtIndex:[SoftTire new] atIndex:i];
        }
        [car print];
    }
    return 0;
}
