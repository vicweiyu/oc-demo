//
//  RetainTracker.m
//  chapter9
//
//  Created by Yu WEI on 26/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

-(id) init {
    if (self = [super init]) {
        NSLog(@"init:RetainTracker, RC:%lu", [self retainCount]);
    }
    return self;
}

-(void) dealloc {
    NSLog(@"dealloc:RetainTracker");
    [super dealloc];
}

@end
