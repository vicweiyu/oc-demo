//
//  Employee.m
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(id) init
{
    if (self = [super init]) {
        NSLog(@"Employee init...");
    }
    return self;
}

-(Role) role
{
    return role;
}

-(void) setRole: (Role) r
{
    role = r;
}

-(NSString *) title
{
    return title;
}

-(void) setTitle:(NSString *) t
{
    title = t;
}

-(void) work
{
    NSLog(@"I am a %@", title);
}

@end
