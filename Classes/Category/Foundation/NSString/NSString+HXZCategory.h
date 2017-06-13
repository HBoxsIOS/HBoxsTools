//
//  NSString+HXZCategory.h
//  分销电商
//
//  Created by Masteryi on 2017/3/27.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HXZCategory)

// 返回银行卡类型
- (NSString *)returnBankCardType;

// 隐藏银行卡姓名
+ (NSString *)hideBankCardName;

- (NSString *)hideBankCardName;

// 隐藏银行卡卡号
- (NSString *)getSecrectStringWithAccount;

// 显示尾号
- (NSString *)showFinalBankCard;

@end
