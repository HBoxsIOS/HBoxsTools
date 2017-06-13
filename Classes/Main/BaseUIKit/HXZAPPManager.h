//
//  HXZAPPManager.h
//  分销电商
//
//  Created by Masteryi on 2017/6/3.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HXZAPPManager : NSObject
/**
 初始化
 
 @return AppDelegate 实例
 */
+ (instancetype)sharedAppDelegate;


/**
 获取NavigationViewController
 
 @return UINavigationController
 */
- (UINavigationController *)navigationViewController;


/**
 最上层控制器
 
 @return UIViewController
 */
- (UIViewController *)topViewController;


/**
 Push到某一控制器
 
 @param viewController 目标控制器
 @param animated animated
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;


/**
 返回指定控制器
 
 @param viewController 目标控制器
 @return UIViewController
 */
- (NSArray *)popToViewController:(UIViewController *)viewController;

- (UIViewController *)popViewController:(BOOL)animated;


/**
 返回跟控制器
 
 @return NSArray
 */
- (NSArray *)popToRootViewController;



- (void)dismissViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)())completion;


/**
 Present 到登录控制器
 
 @param animated animated
 @param completion 完成回调
 */
- (void)PresetToLoginAnimated:(BOOL)animated completion:(void (^)())completion;


/**
 登录成功回调
 
 @param SucessBlock 成功回调
 */
- (void)PrsenetToLoginSucess:(void (^)())SucessBlock;
@end
