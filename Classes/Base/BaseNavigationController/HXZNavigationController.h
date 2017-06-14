//
//  HXZNavigationController.h
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HXZNavigationConfig.h"

@protocol HXZNavigationDelegate <NSObject>

@optional
// 自定义返回
- (void)backToVC;

@end

@interface HXZNavigationController : UINavigationController

- (void)back;

@property(nonatomic, weak)id<HXZNavigationDelegate> backdelegate;

- (void)updateWithConfig: (void (^)(HXZNavigationConfig *config))configBlock;

@end
