//
//  NSString+HXZCategory.m
//  分销电商
//
//  Created by Masteryi on 2017/3/27.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "NSString+HXZCategory.h"
#import "NSString+Predicate.h"

@implementation NSString (HXZCategory)

- (NSString *)returnBankCardType{
    NSString *type = self;
    if ([type isEqualToString:@"deposit"]) {
        return @"储蓄卡";
    }else if ([type isEqualToString:@"credit"]){
        return @"信用卡";
    }
    return nil;
}


+ (NSString *)hideBankCardName{
    return  [[NSString alloc] hideBankCardName];
}

- (NSString *)hideBankCardName{
    NSString *hideStr = self;
    @autoreleasepool {
        NSMutableString *outputStr = [[NSMutableString alloc] initWithString:hideStr];
        [outputStr replaceCharactersInRange:NSMakeRange(0, 1) withString:@"*"];
        hideStr = outputStr;
    }
    return hideStr;
    
}

- (NSString *) getSecrectStringWithAccount
{
    NSString *account = self;
    if (![self isValidBankCardNumber]) {
        return self;
    }else{
        NSMutableString *newStr = [NSMutableString stringWithString:account];
        NSRange range = NSMakeRange(4, 11);
        if (newStr.length>12) {
            [newStr replaceCharactersInRange:range withString:@" **** **** *** "];
            
        }
        return newStr;
    }
   
    return nil;
}

- (NSString *)showFinalBankCard{
    NSString *bankCardNumber = self;
    if ([bankCardNumber isValidBankCardNumber]) {
        bankCardNumber = [bankCardNumber substringFromIndex:(bankCardNumber.length - 4)];
        return bankCardNumber;
    }else{
        return bankCardNumber;
    }
    
//    return @"";
    
}
@end
