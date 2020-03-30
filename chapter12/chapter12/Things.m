//
//  Things.m
//  chapter12
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Things.h"

@interface Things ()
{
    NSInteger thing4;
}

@property(assign, readwrite) NSInteger thing2;
@property(assign) NSInteger thing3;

@end

@implementation Things

- (id)init {
    if (self = [super init]) {
        [self setThing1:100];
        [self setThing2:200];
        [self setThing3:300];
        thing4 = 400;
    }
    return self;
}

- (void)resetAllValues {
    [self setThing1:0];
    [self setThing2:0];
    [self setThing3:0];
    thing4 = 0;
}

- (void)unDeclareFunc {
    NSLog(@"%@", @"unDeclareFunc");
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%ld, %ld, %ld, %ld", [self thing1], [self thing2], [self thing3], thing4];
}

@end

