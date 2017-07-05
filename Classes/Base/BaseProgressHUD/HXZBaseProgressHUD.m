//
//  HXZBaseProgressHUD.m
//  分销电商
//
//  Created by Masteryi on 2017/6/9.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZBaseProgressHUD.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation HXZBaseProgressHUD

+ (void)show{
    
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    
    hub.removeFromSuperViewOnHide = YES;

    
    hub.userInteractionEnabled = NO;
}

+ (void)hide{
    
    [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:YES];
}

+ (void)showMsg:(NSString *)msg duration:(CGFloat)time Complete:(void (^)())complete{
    [self hide];
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    
    hub.mode = MBProgressHUDModeText;
    
    hub.label.text = msg;
    
    [hub.label setTextColor:[UIColor whiteColor]];
    
    hub.label.font = [UIFont systemFontOfSize:16];
    
    hub.removeFromSuperViewOnHide = YES;
    
    hub.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    
    hub.bezelView.color = [UIColor blackColor];
    
    hub.bezelView.alpha = 0.8;
    
    hub.margin = 15;
    
    [hub hideAnimated:YES afterDelay:time];
    
     hub.completionBlock = complete;
}

+ (void)showMsg:(NSString *)msg{
    [self showMsg:msg duration:1.2f Complete:nil];
}

+ (void)showMsg:(NSString *)msg Complete:(void (^)())complete{
    [self showMsg:msg duration:1.2f Complete:complete];
}

+ (void)showMsg:(NSString *)msg imgName:(NSString *)imgName duration:(CGFloat)time{
    
    MBProgressHUD *hud =[MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    
    hud.mode = MBProgressHUDModeCustomView;
    
    // 设置要显示 的自定义的图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imgName]];
    // 显示的文字,比如:加载失败...加载中...
    hud.label.text = msg;
    hud.label.textColor = [UIColor whiteColor];
    // 标志:必须为YES,才可以隐藏,  隐藏的时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    hud.bezelView.color = [UIColor blackColor];
    
    hud.bezelView.alpha = 0.8;
    
    hud.margin = 15;
    
    hud.label.font = [UIFont systemFontOfSize:15];
    
    [hud hideAnimated:YES afterDelay:time];
    
}


@end
