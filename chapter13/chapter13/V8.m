//
//  V8.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "V8.h"

@implementation V8

- (id)init {
    if (self = [super init]) {
        NSLog(@"V8 init...");
    }
    return self;
}

- (NSString *)description {
    return @"I am a V8 Engine";
}

@end
