//
//  HXZTabBar.h
//  分销电商
//
//  Created by Masteryi on 2016/11/25.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HXZTabBarDelegate <NSObject>

@optional
- (void)publicshBttonClick:(UIButton *)button;

@end

@interface HXZTabBar : UITabBar

@property (nonatomic, weak)id<HXZTabBarDelegate> delegate;

@end
