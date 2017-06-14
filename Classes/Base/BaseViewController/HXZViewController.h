//
//  HXZViewController.h
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HXZVCType){
    HXZVCTFULLSCREEN = 0,
    HXZVCNAVIGATION  = 1,
    HXZVCTABBAR      = 2
    
} ;

@interface HXZViewController : UIViewController

@property (nonatomic,strong)UIScrollView *conetView;

@property (nonatomic, assign)HXZVCType VCType;

- (void)pop;

- (void)popToRootVc;

- (void)popToVc:(UIViewController *)vc;

- (void)dismiss;

- (void)dismissWithCompletion:(void(^)())completion;

- (void)presentVc:(UIViewController *)vc;

- (void)presentVc:(UIViewController *)vc completion:(void (^)(void))completion;

- (void)pushVc:(UIViewController *)vc;

- (void)removeChildVc:(UIViewController *)childVc;

- (void)addChildVc:(UIViewController *)childVc;


@end
