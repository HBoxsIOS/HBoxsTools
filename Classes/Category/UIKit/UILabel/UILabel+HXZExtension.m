//
//  UILabel+HXZExtension.m
//  大海鲜
//
//  Created by Masteryi on 2016/10/29.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "UILabel+HXZExtension.h"

#define SizeScale (([[UIScreen mainScreen] bounds].size.height > 568) ? [[UIScreen mainScreen] bounds].size.height/568 : 1)

#define SmaleScale (([[UIScreen mainScreen] bounds].size.height == 568) ? 0.8 : 1)

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


+ (void)load{
    //利用running time运行池的方法在程序启动的时候把两个方法替换 适用Xib建立的label
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);  //交换方法
    
    Method fra = class_getInstanceMethod([self class], @selector(initWithFrame:));
    Method myfra = class_getInstanceMethod([self class], @selector(myinitWithFrame:));
    
    method_exchangeImplementations(fra, myfra);  //交换方法
}


- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.tag != 333){
            CGFloat fontSize = self.font.pointSize;
            self.font = [UIFont systemFontOfSize:fontSize * SmaleScale];
        }
    }
    return self;
}

- (instancetype)myinitWithFrame:(CGRect)frame{
    [self myinitWithFrame:frame];
    if (self) {
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.tag != 333){
            CGFloat fontSize = self.font.pointSize;
            self.font = [UIFont systemFontOfSize:fontSize * SmaleScale];
        }
    }
    return self;
}

@end
