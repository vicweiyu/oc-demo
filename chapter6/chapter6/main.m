//
//  main.m
//  chapter6
//
//  Created by PolyMac on 25/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "V8.h"
#import "SoftTire.h"

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
