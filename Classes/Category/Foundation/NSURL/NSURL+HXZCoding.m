//
//  NSURL+HXZCoding.m
//  分销电商
//
//  Created by Masteryi on 2017/5/26.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "NSURL+HXZCoding.h"

@implementation NSURL (HXZCoding)

+ (instancetype)URLWithUTF8String:(NSString *)URLString{
    
    NSString *utf8String = [URLString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    return [NSURL URLWithString:utf8String];
    
}


@end
