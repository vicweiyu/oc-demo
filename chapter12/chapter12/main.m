//
//  main.m
//  chapter12
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvenience.h"
#import "Things.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:[@"hello" lengthAsNumber] forKey:@"hello"];
        [dict setObject:[@"Objective-C" lengthAsNumber] forKey:@"Objective-C"];
        NSLog(@"%@", dict);

        Things *t = [[Things alloc] init];
        NSLog(@"%@", t);
        // [t setThing1:150];
        t.thing1 = 150;
        NSLog(@"%@", t);
        [t resetAllValues];
        NSLog(@"%@", t);
        // [t unDeclareFunc];

        if ([t respondsToSelector:@selector(setThing1:)] == YES) {
            NSLog(@"Thing has setThing1:");
        }
        if ([t respondsToSelector:@selector(setThing2:)] == YES) {
            NSLog(@"Thing has setThing2:");
        }
        if ([t respondsToSelector:@selector(setThing3:)] == YES) {
            NSLog(@"Thing has setThing3:");
        }
        if ([t respondsToSelector:@selector(setThing4:)] == YES) {
            NSLog(@"Thing has setThing4:");
        }
        if ([t respondsToSelector:@selector(setThing5:)] == YES) {
            NSLog(@"Thing has setThing5:");
        }
    }
    return 0;
}
