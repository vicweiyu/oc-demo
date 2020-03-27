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
    NSString *appellation;
    // NSString *sn;
}

@property(nonatomic, copy) NSString *name;
@property(readonly) NSString *sn;
@property(retain) Engine *engine;

- (Tire *)tireAtIndex:(int)index;

- (void)setTire:(Tire *)tire atIndex:(int)index;

- (void)print;

@end

NS_ASSUME_NONNULL_END
