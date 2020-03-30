//
//  NSString+NumberConvenience.m
//  chapter12
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)

- (NSNumber *)lengthAsNumber {
    NSUInteger length = [self length];
    return ([NSNumber numberWithUnsignedInt:length]);
}

@end
