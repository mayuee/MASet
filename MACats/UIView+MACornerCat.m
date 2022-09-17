//
//  UIView+MACornerCat.m
//  MACats
//
//  Created by mazb on 2022/9/17.
//

#import "UIView+MACornerCat.h"

@implementation UIView (MACornerCat)

- (void)setCorner:(CGFloat)corner
{
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(corner, corner)];
    CAShapeLayer * layer = [[CAShapeLayer alloc]init];
    layer.frame = self.bounds;
    layer.path = path.CGPath;
    self.layer.mask = layer;
}

- (void)setCornerTopLeft:(CGFload)topLeft
                topRight:(CGFloat)topRight
               bottomLeft:(CGFloat)bottomLeft
              bottomRight:(CGFloat)bottomRight
{
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(corner, corner)];
    CAShapeLayer * layer = [[CAShapeLayer alloc]init];
    layer.frame = self.bounds;
    layer.path = path.CGPath;
    self.layer.mask = layer;
}

@end
