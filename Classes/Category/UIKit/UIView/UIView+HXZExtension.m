//
//  UIView+HXZExtension.m
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "UIView+HXZExtension.h"

@implementation UIView (HXZExtension)

#pragma mark -width

- (CGFloat)my_width{
    return self.frame.size.width;
}
- (void)setMy_width:(CGFloat)my_width{
    CGRect frame = self.frame;
    frame.size.width = my_width;
    self.frame = frame;
}
#pragma mark -height

- (void)setMy_height:(CGFloat)my_height{
    CGRect frame = self.frame;
    frame.size.height = my_height;
    self.frame = frame;
}
- (CGFloat)my_height{
    return self.frame.size.height;
}
#pragma mark -X

- (void)setMy_x:(CGFloat)my_x{
    CGRect frame = self.frame;
    frame.origin.x = my_x;
    self.frame = frame;
}
- (CGFloat)my_x{
    return self.frame.origin.x;
}
#pragma mark -y

- (void)setMy_y:(CGFloat)my_y{
    CGRect frame = self.frame;
    frame.origin.y = my_y;
    self.frame = frame;
}
- (CGFloat)my_y{
    return self.frame.origin.y;
}
#pragma mark -centerX
- (void)setMy_centerX:(CGFloat)my_centerX{
    CGPoint center = self.center;
    center.x = my_centerX;
    self.center = center;
}
- (CGFloat)my_centerX{
    return self.center.x;
}
#pragma mark -centerY
- (void)setMy_centerY:(CGFloat)my_centerY{
    CGPoint center = self.center;
    center.y = my_centerY;
    self.center = center;
}
- (CGFloat)my_centerY{
    return self.center.y;
}
#pragma mark -right
- (void)setMy_right:(CGFloat)my_right{
    self.my_x = my_right - self.my_width;
}
- (CGFloat)my_right{
    return CGRectGetMaxX(self.frame);
}

#pragma mark -buttom
- (void)setMy_bottom:(CGFloat)my_bottom{
    self.my_y = my_bottom - self.my_height;
}
- (CGFloat)my_bottom{
    return CGRectGetMaxY(self.frame);
}


+(instancetype)my_ViewFromXib{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
};

@end
