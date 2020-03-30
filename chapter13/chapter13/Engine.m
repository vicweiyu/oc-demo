//
//  Engine.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)init {
    if (self = [super init]) {
        NSLog(@"Engine init...");
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Engine *engineCopy = [[[self class] allocWithZone:zone] init];
    return engineCopy;
}

- (NSString *)description {
    return @"I am a Normal Engine";
}

@end
