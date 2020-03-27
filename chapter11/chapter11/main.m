//
//  main.m
//  chapter11
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
        Car *car = [[Car alloc] init];
        // [car setName:@"Mustang"];
        // car.name = @"Mustang";
        car.name = @"Ford";

        Engine *engine = [[Engine alloc] init];
        // [car setEngine:engine];
        car.engine = engine;

        for (int i = 0; i < 4; i++) {
            /*
            Tire *tire = [[Tire alloc] init];
            [tire setPressure:23 + i];
            [tire setTreadDepth:33 - i];
            */
            MichelinTire *tire = [[MichelinTire alloc] initWithPressure:23 + i treadDepth:33 - i ];
            tire.snowHandling += 20;
            [car setTire:tire atIndex:i];
        }

        [car print];
    }
    return 0;
}


