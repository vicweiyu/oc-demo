//
//  Engine.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)init
{
    if (self = [super init]) {
        NSLog(@"Engine init");
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"I am a Engine"];
}

@end
