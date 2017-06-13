//
//  HXZTabBar.m
//  分销电商
//
//  Created by Masteryi on 2016/11/25.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZTabBar.h"
#import "HXZToolHeader.h"
#import "UIView+HXZExtension.h"
@interface HXZTabBar()

/** 中间的直播按钮 */
@property (nonatomic, weak) UIButton *publishButton;

@end

@implementation HXZTabBar


#pragma mark - 懒加载
/** 发布按钮 */
- (UIButton *)publishButton
{
    if (!_publishButton) {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [publishButton setImage:[UIImage imageNamed:@"liveBtn"] forState:UIControlStateNormal];
//        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishButton addTarget:self action:@selector(publishClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    return _publishButton;
}

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
//        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    }
    return self;
}

/**
 *  布局子控件
 */
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    
    
    self.publishButton.my_width = 64;
    self.publishButton.my_height = 64;
    self.publishButton.my_centerX = self.my_width * 0.5;
    self.publishButton.my_centerY = self.my_height * 0.5 - 15;
    
    
    /**** 按钮的尺寸 ****/
    CGFloat buttonW = self.my_width / 5;
    CGFloat buttonH = self.my_height;
    
    /**** 设置所有UITabBarButton的frame ****/
    CGFloat tabBarButtonY = 0;
    // 按钮索引
    int tabBarButtonIndex = 0;
    
    for (UIView *subview in self.subviews) {
        // 过滤掉非UITabBarButton
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        
        // 设置frame
        CGFloat tabBarButtonX = tabBarButtonIndex * buttonW;
        if (tabBarButtonIndex >= 2) { // 右边的2个UITabBarButton
//            tabBarButtonX += buttonW;
            if (tabBarButtonX == 2) {
                subview.frame = CGRectMake(tabBarButtonX, tabBarButtonY, 64, 64);
                
//
            }
            
        }
        subview.frame = CGRectMake(tabBarButtonX, tabBarButtonY, buttonW, buttonH);
        
        // 增加索引
        tabBarButtonIndex++;
        
        //        UIControl *tabBarButton = (UIControl *)subview;
        //        [tabBarButton addTarget:self action:@selector(tabBarButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    
    /**** 设置中间的发布按钮的frame ****/
   
}

#pragma mark - 监听
- (void)publishClick:(UIButton *)button
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(publicshBttonClick:)]) {
        [self.delegate publicshBttonClick:button];
    }
}



@end
