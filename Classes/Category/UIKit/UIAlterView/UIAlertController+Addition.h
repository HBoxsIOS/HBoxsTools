//
//  UIAlertController+Addition.h
//  零距电商
//
//  Created by Masteryi on 2016/12/2.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Addition)


/**
 单个按钮的弹出框

 @param message 标题
 @param handler 点击回调
 @return alter
 */
+ (UIAlertController *)alterWithTitle:(NSString *)title
                              Message:(NSString *)message
                              handler:(void (^)(UIAlertAction *action))handler;


+ (UIAlertController *)alterWithTitle:(NSString *)title
               Message:(NSString *)message
               Comfirm:(void (^)(UIAlertAction *action))comfirm
                Cancel:(void (^)(UIAlertAction *action))canel;
@end
