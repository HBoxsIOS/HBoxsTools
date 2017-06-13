//
//  UIView+HXZTap.h
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HXZTap)

/**
 *  动态添加手势
 */
- (void)setTapActionWithBlock:(void (^)(void))block ;

@end
