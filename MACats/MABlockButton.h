//
//  MABlockButton.h
//  MACats
//
//  Created by mazb on 2022/9/17.
//

///使用  继承 实现给 UIButton 添加 block 事件


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MABlockButton : UIButton

- (instancetype)initWithBlock:(void (^)(UIButton * _Nonnull button))clickBlock;


@end

NS_ASSUME_NONNULL_END
