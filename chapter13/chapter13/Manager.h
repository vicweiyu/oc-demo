//
//  Manager.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engineering.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

{
    id<Engineering> delegate;
}

- (id)delegate;

- (void)setDelegate:(id <Engineering>)delegate;

- (void)doWork;

@end

NS_ASSUME_NONNULL_END
