//
//  UIImageView+HXZWebImage.m
//  分销电商
//
//  Created by Masteryi on 2017/6/9.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "UIImageView+HXZWebImage.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <SDWebImage/SDWebImageManager.h>
#import <SDWebImage/SDWebImageCompat.h>

@implementation UIImageView (HXZWebImage)



- (void)setURLImageWithURL:(NSString *)URLString
          placeholderImage:(UIImage *)placeholderImage
                  complete:(ImageComplete)complete{

    
    NSString *UTF8String = [URLString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
    [self sd_setImageWithURL:[NSURL URLWithString:UTF8String] placeholderImage:placeholderImage options:SDWebImageProgressiveDownload completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        self.image = image;
        if (complete) {
            complete(image, imageURL);
        }
    }];
}


- (void)setURLImageWithURL:(NSString *)URLString placeholderImage:(UIImage *)placeholderImage{
    [self setURLImageWithURL:URLString placeholderImage:placeholderImage complete:nil];
}

- (void)setURLImageWithURL:(NSString *)URLString{
    [self setURLImageWithURL:URLString placeholderImage:nil];
}

@end
