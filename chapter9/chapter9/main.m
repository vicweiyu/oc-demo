//
//  main.m
//  chapter9
//
//  Created by Yu WEI on 26/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"
#import "Engine.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    /*
    RetainTracker *tracker = [RetainTracker new];

    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    */

    /*
    Car *car = [Car new];
    NSLog(@"car, RC:%lu", [car retainCount]);
    Engine *engine = [Engine new];
    NSLog(@"engine, RC:%lu", [engine retainCount]);

    [car setEngine:engine];
    NSLog(@"car, RC:%lu", [car retainCount]);
    NSLog(@"engine, RC:%lu", [engine retainCount]);

    [car release];
    NSLog(@"engine, RC:%lu", [engine retainCount]);
    [engine release];

    // NSLog(@"car, RC:%lu", [car retainCount]);
    NSLog(@"engine, RC:%lu", [engine retainCount]); // ?
    */

    /*
    @autoreleasepool {
        Engine *engine = [Engine new];
        [engine autorelease];
        Car *car = [Car new];
        [car autorelease];
        [car setEngine:engine];
        NSLog(@"engine, RC:%lu", [engine retainCount]);
    }

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    RetainTracker *t = [RetainTracker new];
    NSLog(@"%lu", [t retainCount]);
    [t retain];
    NSLog(@"%lu", [t retainCount]);
    [t autorelease];
    NSLog(@"%lu", [t retainCount]);
    [t release];
    NSLog(@"%lu", [t retainCount]);
    NSLog(@"Start to release pool");
    [pool release];
    NSLog(@"End to release pool");
    */

    id savedException = nil;
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    @try {
        NSException *e = [NSException exceptionWithName:@"EXP Name" reason:@"EXP Reason" userInfo:nil];
        // [e raise];
        @throw e;
    } @catch (NSException *exp) {
        NSLog(@"In catch: %@, %@", [exp name], [exp reason]);
        savedException = [exp retain];
        @throw;
    } @finally {
        NSLog(@"In @finally");
        [pool release];
        [savedException autorelease];
        NSLog(@"%lu", [savedException retainCount]);
    }

    NSLog(@"end");

    return 0;
}
