//
//  Manager.m
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (id)delegate {
    return delegate;
}

- (void)setDelegate:(id <Engineering>)d {
    delegate = d;
}

- (void)doWork {
    NSLog(@"Manager Start Work...");
    [delegate doRequiredWork];
    if ([delegate respondsToSelector:@selector(doOptionalWork)] == YES) {
        [delegate doOptionalWork];
    }
    NSLog(@"Manager End Work...");
}

@end
