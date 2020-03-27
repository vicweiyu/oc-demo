//
//  Car.h
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

{
    Engine *engine;
    NSMutableArray *tires;
}

- (Engine *)engine;

- (void)setEngine:(Engine *)engine;

- (Tire *)tireAtIndex:(int)index;

- (void)setTire:(Tire *)tire atIndex:(int)index;

- (void)print;

@end

NS_ASSUME_NONNULL_END
