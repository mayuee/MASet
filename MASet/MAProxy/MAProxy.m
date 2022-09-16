//
//  MAProxy.m
//  MAProxy
//
//  Created by mazb on 2022/9/16.
//

#import "MAProxy.h"

@interface MAProxy ()

//弱引用原类
@property (nonatomic, weak, readonly) NSObject *target;

@end

@implementation MAProxy

- (instancetype)initWithTarget:(id)target {
    _target = target;
    return self;
}

+ (instancetype)proxyWithTarget:(id)target {
    return [[self alloc] initWithTarget:target];
}

// 消息转发
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if (self.target && [self.target respondsToSelector:aSelector]) {
        return [self.target methodSignatureForSelector:aSelector];
    }
    return [super methodSignatureForSelector:aSelector];
}


- (void)forwardInvocation:(NSInvocation *)anInvocation{
    SEL aSelector = [anInvocation selector];
    if (self.target && [self.target respondsToSelector:aSelector]) {
        [anInvocation invokeWithTarget:self.target];
    } else {
        [super forwardInvocation:anInvocation];
    }
}


@end
