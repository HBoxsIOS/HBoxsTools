//
//  CALayer+HXZExstension.m
//  分销电商
//
//  Created by Masteryi on 2016/12/27.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "CALayer+HXZExstension.h"

@implementation CALayer (HXZExstension)

- (CATransition *)fadeFunction{
    return  [self fadeFunction:0.4];
}
/**
 *  渐显效果 效果时间
 */
- (CATransition *)fadeFunction:(CGFloat)time {
    CATransition *animation = [CATransition animation];
    [animation setDuration:time];
    [animation setType:kCATransitionFade];
    [animation setSubtype:kCATransitionFromRight];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault]];
    [self addAnimation:animation forKey:nil];
    return animation;
}

- (void)cellShadow{
    self.shadowOpacity = 0.3;
    self.shadowOffset = CGSizeMake(4, 4);
    self.shadowColor = [UIColor grayColor].CGColor;
    self.masksToBounds = NO;
}

- (void)commonCornerRadius{
    self.cornerRadius = 5.f;
    self.masksToBounds = YES;
}

- (void)setLayerWithRadus:(CGFloat)radius{
    self.cornerRadius = radius;
    self.masksToBounds = YES;
}

- (void)setLayerWithRadus:(CGFloat)radius BorderColor:(UIColor *)color BorderWith:(CGFloat)borderWith{
    self.cornerRadius = radius;
    self.borderColor = color.CGColor;
    self.borderWidth = borderWith;
    self.masksToBounds = YES;
}


- (void)setLayerWithShowOpacity:(CGFloat)opacity Offset:(CGSize)size ShowColor:(UIColor *)showColor{
    self.shadowOpacity = opacity;
    self.shadowOffset = size;
    self.shadowColor = showColor.CGColor;
    self.masksToBounds = NO;
}

@end
