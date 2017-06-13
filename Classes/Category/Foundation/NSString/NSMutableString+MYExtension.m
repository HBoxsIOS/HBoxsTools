//
//  NSMutableString+MYExtension.m
//  分销电商
//
//  Created by Masteryi on 2017/3/14.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "NSMutableString+MYExtension.h"

@implementation NSMutableString (MYExtension)

+ (NSAttributedString *)ChangePriceLableWithString:(NSString *)string{
    return [[NSMutableString alloc] ChangePriceLableWithString:string];
}

- (NSAttributedString *)ChangePriceLableWithString:(NSString *)string{
    
    NSString *priString = [NSString stringWithFormat:@"￥%@",string];
    NSMutableAttributedString *priceStr = [[NSMutableAttributedString alloc] initWithString:priString];
      [priceStr addAttribute:NSKernAttributeName value:@(-2) range:NSMakeRange(0, 1)];
    NSRange range = [priString rangeOfString:@"."];
    
    if (range.length>0 && range.location>0) {
    
    // 间距
      
        

        [priceStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, 1)];
        
        [priceStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(priceStr.length - 2, 2)];

    }else{
        [priceStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, 1)];
    }

   

    
    return priceStr;
}

@end
