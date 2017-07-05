//
//  UIImageView+HXZWebImage.h
//  分销电商
//
//  Created by Masteryi on 2017/6/9.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ImageComplete)(UIImage *image, NSURL *imageURL);

@interface UIImageView (HXZWebImage)



/**
 下载图片

 @param URLString 图片URL
 @param placeholderImage 占位图
 @param complete 完成回调
 */
- (void)setURLImageWithURL:(NSString *)URLString
          placeholderImage:(UIImage *)placeholderImage
                  complete:(ImageComplete)complete;


/**
 下载图片

 @param URLString 图片URL
 @param placeholderImage 占位图
 */
- (void)setURLImageWithURL:(NSString *)URLString
          placeholderImage:(UIImage *)placeholderImage;


/**
 下载图片

 @param URLString 图片URL
 */
- (void)setURLImageWithURL:(NSString *)URLString;


@end
