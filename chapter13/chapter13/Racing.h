//
//  Racing.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Racing <NSObject>

- (void)race;

@required
- (void)funcR;

@optional
- (void)funcO;

@end

NS_ASSUME_NONNULL_END
