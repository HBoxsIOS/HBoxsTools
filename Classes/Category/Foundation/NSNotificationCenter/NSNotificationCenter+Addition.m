//
//  NSNotificationCenter+Addition.m
//  分销电商
//
//  Created by Masteryi on 2016/12/2.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "NSNotificationCenter+Addition.h"

@implementation NSNotificationCenter (Addition)

+ (void)postNotification:(NSString *)notiname{
    [[NSNotificationCenter defaultCenter]postNotificationName:notiname object:nil];
}

+ (void)postNotification:(NSString *)notiname object:(id)object{
    if (object == nil) {
        [self postNotification:notiname];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:notiname object:object userInfo:nil];
    }
}


+ (void)addObserver:(id)observer action:(SEL)action name:(NSString *)name {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:action name:name object:nil];
}

@end
