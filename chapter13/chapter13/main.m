//
//  main.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "V8.h"
#import "Tire.h"
#import "Michelin.h"
#import "Car.h"
#import "Manager.h"
#import "Developer.h"
#import "Tester.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        
        car.name = @"Mustang";
        
        V8 *v8 = [[V8 alloc] init];
        [car setEngine:v8];
        
        for (NSInteger i = 0; i < 4; i++) {
            Michelin *mTire = [[Michelin alloc] initWithParams:20 + i treadDepth:30 - i rainHandling:200 snowHandling:150];
            [car setTire:mTire atIndex:i];
        }
        
        Car *carCopy = [car copy];
        carCopy.name = @"Ford";
        
        [car print];
        [carCopy print];

        [car race];
        [carCopy funcR];
        // [carCopy funcO];
        
        Manager *manager = [[Manager alloc] init];
        Developer *developer = [[Developer alloc] init];
        [manager setDelegate:developer];
        [manager doWork];
        Tester *tester = [[Tester alloc] init];
        [manager setDelegate:tester];
        [manager doWork];
    }
    return 0;
}
