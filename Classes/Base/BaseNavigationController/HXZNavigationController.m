//
//  HXZNavigationController.m
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZNavigationController.h"
//#import "UIImage+HXZExtension.h"
//#import "HXZToolHeader.h"


@interface HXZNavigationController ()<UIGestureRecognizerDelegate>

@property (nonatomic ,copy)NSString *isRoot;

@property (nonatomic, strong)UIViewController *targetVC;

@property (nonatomic, strong)UIButton *returnBtn;

@property (nonatomic, strong)HXZNavigationConfig *navigationConfig;

@end

@implementation HXZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    UIImage *image = [[UIImage alloc] createImageWithColor:WhiteColor];
//    [[UINavigationBar appearance] setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
//    
//    //设置文字颜色
//    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName : MainTitleColor}];
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
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        self.returnBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //        [backButon setImage:GetImage(@"go_back") forState:UIControlStateNormal];
        self.returnBtn.imageView.frame = CGRectMake(0, 0, 35, 35);
        [self.returnBtn sizeToFit];
        self.returnBtn.contentEdgeInsets = UIEdgeInsetsMake(3, -10, 3, 2);
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
