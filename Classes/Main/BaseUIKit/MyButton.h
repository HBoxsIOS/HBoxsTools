//
//  MyButton.h
//  大海鲜
//
//  Created by Masteryi on 2016/10/29.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyButton;

typedef void(^MyButtonClickButton)(MyButton *);

@interface MyButton : UIButton


// 图片宽度
@property (nonatomic, assign)CGFloat imgView_with;

// 图片高度
@property (nonatomic, assign)CGFloat imgView_height;

// 背景宽度
@property (nonatomic, assign)CGFloat backImg_with;

// 背景高度
@property (nonatomic, assign)CGFloat backImg_height;

// 文字适配宽度
@property (nonatomic, assign)CGFloat autoSize_with;

// 文字适配高度
@property (nonatomic, assign)CGFloat autoSize_height;




/** 回调 */
@property (nonatomic,copy)MyButtonClickButton block;

/** 初始化 */
+ (instancetype)creatMyButton;

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;



/**
 按钮设置

 @param text  按钮文本
 @param font  按钮字体大小
 @param color 按钮字体颜色
 */
- (void)setText:(NSString *)text
        andFont:(CGFloat )font
       andColor:(UIColor *)color;


/**
 按钮设置
 
 @param text  按钮文本
 @param font  按钮字体大小
 @param color 按钮字体颜色
 @param textAlignment 位置
 */
- (void)setText:(NSString *)text
        andFont:(CGFloat)font
       andColor:(UIColor *)color
  TextAkignment:(NSTextAlignment)textAlignment;


- (void)setFont:(CGFloat)font
          Color:(UIColor *)color
  TextAkignment:(NSTextAlignment)textAlignment;


- (void)setLayerCornerRadius;


@end


