//
//  UIView+MACornerCat.h
//  MACats
//
//  Created by mazb on 2022/9/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MACornerCat)

//设置圆角
- (void)setCorner:(CGFloat)corner;

- (void)setCornerTopLeft:(CGFload)topLeft
                topRight:(CGFloat)topRight
              bottomLeft:(CGFloat)bottomLeft
             bottomRight:(CGFloat)bottomRight;

@end

NS_ASSUME_NONNULL_END
