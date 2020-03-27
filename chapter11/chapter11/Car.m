//
//  Car.m
//  chapter10
//
//  Created by Yu WEI on 27/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car

{
    NSMutableArray *tires;
}

@synthesize name = appellation;
@dynamic sn;

- (id)init
{
    if (self = [super init]) {
        NSLog(@"Car init");
        self.name = @"Car";
        tires = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
}

- (NSString *) sn
{
    return @"1111";
}

- (void)setName:(NSString *)newName
{
    NSLog(@"Car - setName");
    appellation = newName;
}

- (Tire *)tireAtIndex:(int)index
{
    return [tires objectAtIndex:index];
}

- (void)setTire:(Tire *)newTire atIndex:(int)index
{
    [tires replaceObjectAtIndex:index withObject:newTire];
}

- (void)print
{
    NSLog(@"%@ - (%@) has:", appellation, self.sn);
    NSLog(@"%@", _engine);
    for (Tire *tire in tires) {
        NSLog(@"%@", tire);
    }
}

@end
