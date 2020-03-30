//
//  Car.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Racing.h"

@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject <NSCopying, Racing>

{
    NSMutableArray *tires;
}

@property(copy) NSString *name;
@property(retain) Engine *engine;

- (Tire *)tireAtIndex:(NSInteger)index;
- (void)setTire:(Tire *)tire atIndex:(NSInteger)index;
- (void)print;

@end

NS_ASSUME_NONNULL_END
