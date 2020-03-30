//
//  Things.h
//  chapter12
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Things : NSObject

@property(assign) NSInteger thing1;
@property(assign, readonly) NSInteger thing2;

- (void)resetAllValues;

@end

NS_ASSUME_NONNULL_END
