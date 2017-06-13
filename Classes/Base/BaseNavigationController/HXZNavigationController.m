//
//  HXZNavigationController.m
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZNavigationController.h"
#import "UIImage+HXZExtension.h"
#import "HXZToolHeader.h"


@interface HXZNavigationController ()<UIGestureRecognizerDelegate>

@property (nonatomic ,copy)NSString *isRoot;

@property (nonatomic, strong)UIViewController *targetVC;

@end

@implementation HXZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [[UIImage alloc] createImageWithColor:WhiteColor];
    [[UINavigationBar appearance] setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
    //设置文字颜色
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName : MainTitleColor}];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        UIButton *backButon = [UIButton buttonWithType:UIButtonTypeCustom];
//        [backButon setImage:GetImage(@"go_back") forState:UIControlStateNormal];
        backButon.imageView.frame = CGRectMake(0, 0, 35, 35);
        [backButon sizeToFit];
        backButon.contentEdgeInsets = UIEdgeInsetsMake(3, -10, 3, 2);
        [backButon addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
       
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButon];
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
