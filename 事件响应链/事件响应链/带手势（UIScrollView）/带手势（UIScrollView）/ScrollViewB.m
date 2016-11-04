//
//  ScrollViewB.m
//  带手势（UIScrollView）
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

#import "ScrollViewB.h"
#import "ScrollViewA.h"

@implementation ScrollViewB

{
    BOOL active;
}

- (void)addScrollView:(ScrollViewA *)scrollView
{
    self.sv = scrollView;
//    [self.panGestureRecognizer addTarget:scrollView action:NSSelectorFromString(@"handlePan:")];
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    NSLog(@"respondsToSelector:%@",NSStringFromSelector(aSelector));
    return [super respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSLog(@"forwardingTargetForSelector:%@",NSStringFromSelector(aSelector));
    return [super forwardingTargetForSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSLog(@"methodSignatureForSelector:%@",NSStringFromSelector(aSelector));
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    NSLog(@"forwardInvocation:%@",anInvocation);
    return [super forwardInvocation:anInvocation];
}

- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated
{
    if (active) {
        [super setContentOffset:contentOffset animated:animated];
    } else {
        [self.sv setContentOffset:contentOffset animated:animated];
    }
}

- (void)setContentOffset:(CGPoint)contentOffset
{
    if (active) {
        [super setContentOffset:contentOffset];
    } else {
        [self.sv setContentOffset:contentOffset];
    }
}

- (void)reActive
{
    active = YES;
}

- (void)unActive
{
    active = NO;
}

@end
