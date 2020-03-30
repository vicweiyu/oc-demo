//
//  Michelin.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Tire.h"

NS_ASSUME_NONNULL_BEGIN

@interface Michelin : Tire

@property float rainHandling;
@property float snowHandling;

- (id)initWithParams:(float)pressure treadDepth:(float)treadDepth rainHandling:(float)rainHandling snowHandling:(float)snowHandling;

@end

NS_ASSUME_NONNULL_END
