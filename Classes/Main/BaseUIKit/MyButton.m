//
//  MyButton.m
//  大海鲜
//
//  Created by Masteryi on 2016/10/29.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "MyButton.h"
#import "HXZToolHeader.h"

@implementation MyButton

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)Click:(MyButton *)btn{
    
    if (_block) {
        _block(btn);
    }
    
}

+ (instancetype)creatMyButton{
    return  [MyButton buttonWithType:UIButtonTypeCustom];
}

- (void)layoutSubviews{
    [super layoutSubviews];
}

// 返回图片宽度
- (CGFloat)imgView_with{
    return self.imageView.image.size.width;
}

// 返回图片高度
- (CGFloat)imgView_height{
    return self.imageView.image.size.height;
}

// 背景宽度
- (CGFloat)backImg_with{
    return self.currentBackgroundImage.size.width;
}

// 背景高度
- (CGFloat)backImg_height{
    return self.currentBackgroundImage.size.height;
}

// 文字适配宽度
- (CGFloat)autoSize_with{
    return HXZSizeW(self.currentTitle, self.titleLabel.font);
}

// 文字适配高度
- (CGFloat)autoSize_height{
    return HXZSizeH(self.currentTitle, self.titleLabel.font);
}


- (void)setText:(NSString *)text andFont:(CGFloat)font andColor:(UIColor *)color{
    
    [self setTitle:text forState:UIControlStateNormal];
    self.titleLabel.font =  [UIFont systemFontOfSize:font];

    [self setTitleColor:color forState:UIControlStateNormal];
    
}

- (void)setText:(NSString *)text
        andFont:(CGFloat)font
       andColor:(UIColor *)color
  TextAkignment:(NSTextAlignment)textAlignment{
    
    [self setTitle:text forState:UIControlStateNormal];
    self.titleLabel.font =  [UIFont systemFontOfSize:font];
    self.titleLabel.textAlignment = textAlignment;
    [self setTitleColor:color forState:UIControlStateNormal];
    
}


- (void)setFont:(CGFloat)font
          Color:(UIColor *)color
  TextAkignment:(NSTextAlignment)textAlignment{
    
    self.titleLabel.font =  [UIFont systemFontOfSize:font];
    self.titleLabel.textAlignment = textAlignment;
    [self setTitleColor:color forState:UIControlStateNormal];
    
}



- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state{
    [self setBackgroundImage:[MyButton imageWithColor:backgroundColor] forState:state];
    
}



- (void)setLayerCornerRadius{
    self.layer.cornerRadius = 5.f;
    self.layer.masksToBounds = YES;
}


+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
