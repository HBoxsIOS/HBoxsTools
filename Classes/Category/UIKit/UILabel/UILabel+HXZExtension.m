//
//  UILabel+HXZExtension.m
//  大海鲜
//
//  Created by Masteryi on 2016/10/29.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "UILabel+HXZExtension.h"


@implementation UILabel (HXZExtension)


- (void)setText:(NSString *)text andFont:(CGFloat )font andColor:(UIColor *)color{
    self.text = text;
    self.textColor = color;
    self.font = [UIFont systemFontOfSize:font];
}

- (void)setFont:(CGFloat)font
       andColor:(UIColor *)color
  TextAlignment:(NSTextAlignment)textAlignment{
    self.textColor = color;
    self.font = [UIFont systemFontOfSize:font];
    self.textAlignment = textAlignment;
    
}





@end
