//
//  main.m
//  chapter2
//
//  Created by PolyMac on 24/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int i1, int i2) {
    if (i1 == i2) {
        return NO;
    } else {
        return YES;
    }
}

NSString *boolString(BOOL yesOrNo) {
    if (yesOrNo == NO) {
        return @"NO";
    } else {
        return @"YES";
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Objective-C!");
        
        NSLog(@"are %d and %d different? %@", 5, 5, boolString(areIntsDifferent(5, 5)));
        NSLog(@"are %d and %d different? %@", 23, 42, boolString(areIntsDifferent(23, 42)));
    }
    return 0;
}
