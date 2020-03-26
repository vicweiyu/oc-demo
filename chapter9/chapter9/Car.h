//
//  Car.h
//  chapter9
//
//  Created by Yu WEI on 26/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

{
    Engine *engine;
}

-(Engine *) engine;

-(void) setEngine: (Engine *) engine;

@end

NS_ASSUME_NONNULL_END
