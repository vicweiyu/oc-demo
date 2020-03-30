//
//  Tire.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject <NSCopying>

@property float pressure;
@property float treadDepth;

- (id)initWithPressure:(float)pressure treadDepth:(float)treadDepth;

@end

NS_ASSUME_NONNULL_END
