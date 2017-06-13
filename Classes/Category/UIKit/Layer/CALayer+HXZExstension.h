//
//  CALayer+HXZExstension.h
//  分销电商
//
//  Created by Masteryi on 2016/12/27.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (HXZExstension)

/** 渐显效果 */
- (CATransition *)fadeFunction;

/**
 默认阴影效果
 */
- (void)cellShadow;

/**
 默认圆角为5
 */
- (void)commonCornerRadius;

/**
 设置圆角

 @param radius 圆角
 */
- (void)setLayerWithRadus:(CGFloat)radius;

/**
 设置圆角 和 边框 宽度 颜色

 @param radius 圆角
 @param color 颜色
 @param borderWith 边框宽度
 */
- (void)setLayerWithRadus:(CGFloat)radius
              BorderColor:(UIColor *)color
               BorderWith:(CGFloat)borderWith;


/**
 设置阴影

 @param opacity 阴影
 @param size 阴影大小
 @param showColor 隐隐颜色
 */
- (void)setLayerWithShowOpacity:(CGFloat)opacity
                         Offset:(CGSize)size
                      ShowColor:(UIColor *)showColor;


@end
