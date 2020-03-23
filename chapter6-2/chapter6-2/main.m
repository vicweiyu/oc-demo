//
//  main.m
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"
#import "Developer.h"
#import "Tester.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Manager *m = [Manager new];
        [m setRole:MANAGER];
        [m setTitle:@"Delivery Lead"];
        [m work];

        Developer *d = [Developer new];
        [d setRole:DEVELOPER];
        [d setTitle:@"Development Lead"];
        [d work];

        Tester *t = [Tester new];
        [t setRole:TESTER];
        [t setTitle:@"Tester"];
        [t work];
    }
    return 0;
}
