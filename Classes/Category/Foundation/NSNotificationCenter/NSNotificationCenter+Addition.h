//
//  NSNotificationCenter+Addition.h
//  分销电商
//
//  Created by Masteryi on 2016/12/2.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (Addition)


/**
 只发送一个通知

 @param notiname 通知名字
 */
+ (void)postNotification:(NSString *)notiname;


+ (void)postNotification:(NSString *)notiname object:(id)object;


+ (void)addObserver:(id)observer action:(SEL)action name:(NSString *)name;

@end
