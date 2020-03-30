//
//  Engineering.h
//  chapter13
//
//  Created by Yu WEI on 30/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Engineering <NSObject>

@required
- (void)doRequiredWork;

@optional
- (void)doOptionalWork;

@end

NS_ASSUME_NONNULL_END
