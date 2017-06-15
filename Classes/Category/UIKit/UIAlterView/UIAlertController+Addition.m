//
//  UIAlertController+Addition.m
//  零距电商
//
//  Created by Masteryi on 2016/12/2.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "UIAlertController+Addition.h"


@implementation UIAlertController (Addition)


+ (instancetype)alterWithTitle:(NSString *)title Message:(NSString *)message handler:(void (^)(UIAlertAction *action))handler{
    UIAlertController *alter = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alter addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:handler]];
    return alter;
}


+ (UIAlertController *)alterWithTitle:(NSString *)title
               Message:(NSString *)message
               Comfirm:(void (^)(UIAlertAction *action))comfirm
                Cancel:(void (^)(UIAlertAction *action))canel
        {
    
    UIAlertController *alter = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alter addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:canel]];
    
    [alter addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:comfirm]];

            return  alter;
}






@end
