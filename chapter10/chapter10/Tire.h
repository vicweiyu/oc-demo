//
//  Tire.h
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject

{
    float pressure;
    float treadDepth;
}

- (id)initWithPressure:(float)pressure;

- (id)initWithTreadDepth:(float)treadDepth;

- (id)initWithPressure:(float)pressure treadDepth:(float)treadDepth;

- (float)pressure;

- (void)setPressure:(float)pressure;

- (float)treadDepth;

- (void)setTreadDepth:(float)treadDepth;

@end

NS_ASSUME_NONNULL_END
