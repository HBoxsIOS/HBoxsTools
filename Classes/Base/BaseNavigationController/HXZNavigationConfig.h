//
//  HXZNavigationConfig.h
//  Pods
//
//  Created by Masteryi on 2017/6/14.
//
//

#import <Foundation/Foundation.h>

@interface HXZNavigationConfig : NSObject

/** 返回按钮图片 */
@property (nonatomic, strong) UIImage *buttonImage;
/** 返回按钮标题 */
@property (nonatomic, copy) NSString *buttonTitle;
/** 返回按钮背景 */
@property (nonatomic, strong) UIColor *buttonBackgroudColor;
/** 返回按钮图片大小 */
@property (nonatomic, assign) CGRect buttonFrame;
/** 返回按钮偏移量 */
@property (nonatomic, assign) UIEdgeInsets buttonInsets;
/** 导航栏图片 */
@property (nonatomic, strong) UIImage *naviImage;
/** 导航栏文字颜色 */
@property (nonatomic, strong) UIColor *naviTitleColor;

/** 默认初始化 */
+ (instancetype)defaultConfig;


@end
