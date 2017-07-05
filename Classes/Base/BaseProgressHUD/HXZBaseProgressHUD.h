//
//  HXZBaseProgressHUD.h
//  分销电商
//
//  Created by Masteryi on 2017/6/9.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HXZBaseProgressHUD : UIView


/**
 显示
 */
+ (void)show;


/**
 隐藏
 */
+ (void)hide;


/**
 标题样式

 @param msg 标题
 @param time 显示时间
 */
+ (void)showMsg:(NSString *)msg duration:(CGFloat)time Complete:(void(^)())complete;


/**
 标题样式 默认显示时间1.2f
 */
+ (void)showMsg:(NSString *)msg;
+ (void)showMsg:(NSString *)msg Complete:(void(^)())complete;

/**
 标题 + 图片 样式
 */
+ (void)showMsg:(NSString *)msg imgName:(NSString *)imgName duration:(CGFloat)time;

@end
