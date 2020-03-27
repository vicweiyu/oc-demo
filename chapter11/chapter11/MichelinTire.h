//
//  MichelinTire.h
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Tire.h"

NS_ASSUME_NONNULL_BEGIN

@interface MichelinTire : Tire

@property float rainHandling;
@property float snowHandling;

- (id)initWithPressure:(float)pressure treadDepth:(float)treadDepth;

@end

NS_ASSUME_NONNULL_END
