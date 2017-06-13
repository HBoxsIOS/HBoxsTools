//
//  NSMutableString+MYExtension.h
//  分销电商
//
//  Created by Masteryi on 2017/3/14.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableString (MYExtension)


/**
 价格类型富文本
 */
+ (NSAttributedString *)ChangePriceLableWithString:(NSString *)string;
/**
 价格类型富文本
 */
- (NSAttributedString *)ChangePriceLableWithString:(NSString *)string;

@end
