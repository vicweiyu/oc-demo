//
//  Employee.h
//  chapter6-2
//
//  Created by victor on 23/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    MANAGER,
    DEVELOPER,
    TESTER
} Role;

@interface Employee : NSObject
{
    Role role;
    NSString *title;
}

-(Role) role;

-(void) setRole: (Role) role;

-(NSString *) title;

-(void) setTitle: (NSString *) title;

-(void) work;

@end

NS_ASSUME_NONNULL_END
