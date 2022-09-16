//
//  MAProxy.h
//  MAProxy
//
//  Created by mazb on 2022/9/16.
//

#import <Foundation/Foundation.h>

@interface MAProxy : NSProxy

- (instancetype)initWithTarget:(id)target;

+ (instancetype)proxyWithTarget:(id)target;

@end
