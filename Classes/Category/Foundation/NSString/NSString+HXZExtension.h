//
//  NSString+HXZExtension.h
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HXZExtension)


/**
 MD5

 @return 转换字符串
 */
- (NSString *) stringWithMD5;


/**
 判断手机类型

 @return 手机类型
 */
+ (NSString *)iphoneType;


- (BOOL)isZipCode;


/**
 *  判断手机号
 */
- (BOOL)isPhoneNumber;

- (NSString *)stringWithNull;

- (BOOL)isString;


/**
 判断字符串是否为空
 */
- (BOOL)isLength;

/**
 隐藏中间数字
 */
- (NSString *)hideNumber;

@end
