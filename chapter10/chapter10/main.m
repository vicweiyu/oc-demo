//
//  main.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
#import "MichelinTire.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        NSStringEncoding encoding = NSUTF8StringEncoding;
        NSError *error = nil;
        NSString *s = [NSString stringWithContentsOfFile:@"/Users/yuwei/Documents/workspace/xcode/oc-demo/chapter10/chapter10/text.txt" encoding:encoding error:&error];
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
        NSLog(@"%@", s);
        */

        Car *car = [[Car alloc] init];

        Engine *engine = [[Engine alloc] init];
        [car setEngine:engine];
        [engine release];
        NSLog(@"%lu", [engine retainCount]);

        for (int i = 0; i < 4; i++) {
            /*
            Tire *tire = [[Tire alloc] init];
            [tire setPressure:23 + i];
            [tire setTreadDepth:33 - i];
            */
            MichelinTire *tire = [[MichelinTire alloc] initWithPressure:23 + i treadDepth:33 - i ];
            [car setTire:tire atIndex:i];
            [tire release];
            NSLog(@"%lu", [tire retainCount]);
        }

        [car print];
        // [car release];
        [car autorelease];
        NSLog(@"end - %lu", [engine retainCount]);
    }
    return 0;
}
