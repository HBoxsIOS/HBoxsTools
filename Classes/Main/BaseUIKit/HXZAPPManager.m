//
//  HXZAPPManager.m
//  分销电商
//
//  Created by Masteryi on 2017/6/3.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZAPPManager.h"
#import "HXZNavigationController.h"

@implementation HXZAPPManager
+ (instancetype)sharedAppDelegate
{
    static HXZAPPManager *sharedAccountManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAccountManagerInstance = [[self alloc] init];
    });
    return sharedAccountManagerInstance;
}


// 获取当前活动的navigationcontroller
- (UINavigationController *)navigationViewController
{
    
    //    UIWindow *window = self.window;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
   
    
    if ([window.rootViewController isKindOfClass:[UINavigationController class]])
    {
        return (UINavigationController *)window.rootViewController;
    }
    else if ([window.rootViewController isKindOfClass:[UITabBarController class]])
    {
        UIViewController *selectVc = [((UITabBarController *)window.rootViewController) selectedViewController];
        if ([selectVc isKindOfClass:[UINavigationController class]])
        {
            return (UINavigationController *)selectVc;
        }
    }
    return nil;
}


- (UIViewController *)topViewController
{
    
    UINavigationController *nav = [self navigationViewController];
    
    return nav.topViewController;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    @autoreleasepool
    {
        viewController.hidesBottomBarWhenPushed = YES;
        [[self navigationViewController] pushViewController:viewController animated:animated];
    }
}

- (UIViewController *)popViewController:(BOOL)animated
{
    return [[self navigationViewController] popViewControllerAnimated:animated];
}

- (NSArray *)popToRootViewController
{
    return [[self navigationViewController] popToRootViewControllerAnimated:NO];
}

- (NSArray *)popToViewController:(UIViewController *)viewController
{
    return [[self navigationViewController] popToViewController:viewController animated:NO];
}

- (void)AppDelegatepresentViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)())completion
{
    UIViewController *top = [self topViewController];
    
    if (vc.navigationController == nil)
    {
        HXZNavigationController *nav = [[HXZNavigationController alloc] initWithRootViewController:vc];
        [top presentViewController:nav animated:animated completion:completion];
    }
    else
    {
        [top presentViewController:vc animated:animated completion:completion];
    }
}

- (void)dismissViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)())completion
{
    if (vc.navigationController != [HXZAPPManager sharedAppDelegate].navigationViewController)
    {
        [vc dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        [self popViewController:animated];
    }
}


- (void)PresetToLoginAnimated:(BOOL)animated completion:(void (^)())completion{
    
//    HXZLoginViewController *finalVc = [[HXZLoginViewController alloc] init];
//    UIViewController *top = [self topViewController];
//    if (finalVc.navigationController == nil)
//    {
//        HXZNavigationController *nav = [[HXZNavigationController alloc] initWithRootViewController:finalVc];
//        [top presentViewController:nav animated:animated completion:completion];
//        
//    }
//    else
//    {
//        [top presentViewController:finalVc animated:animated completion:completion];
//    }
}

- (void)PrsenetToLoginSucess:(void (^)())SucessBlock{
    
//    HXZLoginViewController *finalVc = [[HXZLoginViewController alloc] init];
//    finalVc.block = SucessBlock;
//    HXZNavigationController *Nav = [[HXZNavigationController alloc] initWithRootViewController:finalVc];
//    UIViewController *top = [self topViewController];
//    if (finalVc.navigationController == nil)
//    {
//        
//        [top presentViewController:Nav animated:YES completion:nil];
//        
//    }
//    else
//    {
//        [top presentViewController:Nav animated:YES completion:nil];
//    }
}
@end
