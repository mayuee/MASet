//
//  UIButton+BlockCat.h
//  MACats
//
//  Created by mazb on 2022/9/17.
//
///使用分类 实现给 UIButton 添加 block 事件


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (BlockCat)

@property (nonatomic, copy) void(^clickBlock)(UIButton *button);

@end

NS_ASSUME_NONNULL_END
