//
//  MABlockButton.m
//  MACats
//
//  Created by mazb on 2022/9/17.
//

#import "MABlockButton.h"


@interface MABlockButton()

@property (nonatomic, copy) void(^clickBlock)(UIButton *button);

@end


@implementation MABlockButton


- (instancetype)initWithBlock:(void (^)(UIButton * _Nonnull))clickBlock{
    if (self = [super init]) {
        _clickBlock = clickBlock;
        
        [self removeTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];

        if (clickBlock) {
            
            [self addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        }

    }
    return self;
}

- (void)clickAction:(UIButton *)button
{
    if (self.clickBlock) {
        self.clickBlock(button);
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
