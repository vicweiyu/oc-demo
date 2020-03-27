//
//  MichelinTire.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "MichelinTire.h"

@implementation MichelinTire

- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super initWithPressure:p treadDepth:td]) {
        rainHandling = 23.7;
        snowHandling = 37.9;
    }
    return self;
}

- (float)rainHandling {
    return rainHandling;
}

- (void)setRainHandling:(float)rh {
    rainHandling = rh;
}

- (float)snowHandling {
    return snowHandling;
}

- (void)setSnowHandling:(float)sh {
    snowHandling = sh;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"I am a MichelinTire: %.1f / %.1f / %.1f / %.1f", pressure, treadDepth, rainHandling, snowHandling];
}

@end
