//
//  HXZCommon.m
//  分销电商
//
//  Created by Masteryi on 2016/11/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZCommon.h"

@implementation HXZCommon

+ (UIImage *)creatImageWithColor:(UIColor *)color{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}


@end
