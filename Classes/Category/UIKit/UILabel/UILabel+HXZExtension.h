//
//  UILabel+HXZExtension.h
//  大海鲜
//
//  Created by Masteryi on 2016/10/29.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (HXZExtension)

/**
 UILabel 设置

 @param text  文本
 @param font  字体
 @param color 颜色
 */
- (void)setText:(NSString *)text
        andFont:(CGFloat )font
       andColor:(UIColor *)color;


/**
 文本

 @param font 字体大小
 @param color 颜色
 @param textAlignment 位置
 */
- (void)setFont:(CGFloat )font
       andColor:(UIColor *)color
  TextAlignment:(NSTextAlignment)textAlignment;


@end
