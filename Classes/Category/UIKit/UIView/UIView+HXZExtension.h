//
//  UIView+HXZExtension.h
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HXZExtension)


/** 控件宽度 **/
@property (nonatomic, assign) CGFloat my_width;
/** 控件高度 **/
@property (nonatomic, assign) CGFloat my_height;
/** 控件x **/
@property (nonatomic, assign) CGFloat my_x;
/** 控件y **/
@property (nonatomic, assign) CGFloat my_y;
/** 控件x中心 **/
@property (nonatomic, assign) CGFloat my_centerX;
/** 控件y中心 **/
@property (nonatomic, assign) CGFloat my_centerY;
/** 控件右边 **/
@property (nonatomic, assign) CGFloat my_right;
/** 控件底部 **/
@property (nonatomic, assign) CGFloat my_bottom;

//typedef void (^GestureActionBlock)(UIGestureRecognizer *ges);
/** 单点击手势 */
//- (void)tapGesture:(GestureActionBlock)block;

/**
 通过xib创建view
 */
+(instancetype)my_ViewFromXib;
@end
