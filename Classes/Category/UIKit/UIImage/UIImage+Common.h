//
//  UIImage+Common.h
//  TILLiveSDKShow
//
//  Created by wilderliao on 16/11/9.
//  Copyright © 2016年 Tencent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Common)


/**
 创建一张带颜色的图片

 @param color 颜色
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


/**
 创建一张带颜色的图片

 @param color 颜色
 @param size 大小
 @return 图片实例
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

// 毛玻璃效果
//+ (UIImage *)imageWithBurImageWithName:(NSString *)name;

@end
