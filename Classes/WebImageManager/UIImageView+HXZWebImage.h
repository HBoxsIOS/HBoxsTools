//
//  UIImageView+HXZWebImage.h
//  分销电商
//
//  Created by Masteryi on 2017/6/9.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (HXZWebImage)


/**
 下载网络图片
 */
- (void)setURLImageWithURL:(NSString *)URLString
          placeholderImage:(UIImage *)placeholderImage
                  complete:(void(^)())complete;

@end
