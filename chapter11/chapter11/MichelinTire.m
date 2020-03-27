//
//  MichelinTire.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "MichelinTire.h"

@implementation MichelinTire

- (id)initWithPressure:(float)p treadDepth:(float)td
{
    if (self = [super initWithPressure:p treadDepth:td]) {
        NSLog(@"MichelinTire - initWithPressure:treadDepth:");
        self.rainHandling = 23.7;
        self.snowHandling = 37.9;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"I am a MichelinTire: %.1f / %.1f / %.1f / %.1f", self.pressure, self.treadDepth, self.rainHandling, self.snowHandling];
}

@end
