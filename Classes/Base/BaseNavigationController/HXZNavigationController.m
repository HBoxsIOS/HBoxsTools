//
//  HXZNavigationController.m
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZNavigationController.h"


@interface HXZNavigationController ()<UIGestureRecognizerDelegate>
/** 返回按钮 */
@property (nonatomic, strong)UIButton *returnBtn;
/** 配置信息 */
@property (nonatomic, strong)HXZNavigationConfig *navigationConfig;

@end

@implementation HXZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (UIButton *)returnBtn{
    if (!_returnBtn) {
        _returnBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return _returnBtn;
}

- (HXZNavigationConfig *)navigationConfig{
    if (!_navigationConfig) {
        _navigationConfig = [HXZNavigationConfig defaultConfig];
    }
    return _navigationConfig;
}


- (void)updateWithConfig:(void (^)(HXZNavigationConfig *))configBlock{
    if (configBlock) {
        configBlock(self.navigationConfig);
    }
    
    [[UINavigationBar appearance] setBackgroundImage:self.navigationConfig.naviImage forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName : self.navigationConfig.naviTitleColor}];
    
    [self.returnBtn setImage:self.navigationConfig.buttonImage forState:UIControlStateNormal];
    [self.returnBtn setTitle:self.navigationConfig.buttonTitle forState:UIControlStateNormal];
    self.returnBtn.backgroundColor = self.navigationConfig.buttonBackgroudColor;
    self.returnBtn.frame = self.navigationConfig.buttonFrame;
    self.returnBtn.contentEdgeInsets = self.navigationConfig.buttonInsets;
    
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        self.returnBtn.frame = self.navigationConfig.buttonFrame;
        self.returnBtn.contentEdgeInsets = self.navigationConfig.buttonInsets;
        [self.returnBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:self.returnBtn];
    }

    [super pushViewController:viewController animated:YES];
}



- (void)back{


    [self popViewControllerAnimated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
