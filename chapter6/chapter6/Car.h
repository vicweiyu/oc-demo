//
//  Car.h
//  chapter6
//
//  Created by PolyMac on 25/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "Engine.h"
// #import "Tire.h"

@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

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

NS_ASSUME_NONNULL_END
