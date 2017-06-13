//
//  NSURL+HXZCoding.h
//  分销电商
//
//  Created by Masteryi on 2017/5/26.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (HXZCoding)


/**
 UTF-8 编码
 */
+ (nullable instancetype)URLWithUTF8String:(NSString *_Nullable)URLString;

@end
