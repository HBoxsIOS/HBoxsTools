//
//  UIImage+HXZExtension.h
//  分销电商
//
//  Created by Masteryi on 2016/11/18.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HXZExtension)

/**
 设置圆形图片

 @return 图片
 */
- (instancetype)circleImage;

+ (instancetype)circleImage:(NSString *)name;

- (UIImage *)createImageWithColor:(UIColor *)color;

- (UIImage *)imageByApplyingAlpha:(CGFloat)alpha;


/**
 裁剪图片
 */
+ (UIImage *)resizingImageWithName:(NSString *)name;

@end
