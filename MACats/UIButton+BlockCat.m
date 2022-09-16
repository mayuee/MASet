//
//  UIButton+BlockCat.m
//  MACats
//
//  Created by mazb on 2022/9/17.
//

#import "UIButton+BlockCat.h"
#import <objc/runtime.h>

static char *const kClickBlock = "clickBlock";

@implementation UIButton (BlockCat)


- (void)setClickBlock:(void (^)(UIButton * _Nonnull))clickBlock
{
    objc_setAssociatedObject(self, kClickBlock, clickBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];

    if (clickBlock) {
        
        [self addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void (^)(UIButton * _Nonnull))clickBlock
{
    return objc_getAssociatedObject(self, kClickBlock);
}

- (void)clickAction:(UIButton *)button
{
    if (self.clickBlock) {
        self.clickBlock(button);
    }
}



@end
