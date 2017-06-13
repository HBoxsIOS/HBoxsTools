//
//  HXZBaseViewModel.m
//  分销电商
//
//  Created by Masteryi on 2016/12/19.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZBaseViewModel.h"
#import <objc/runtime.h>

@implementation HXZBaseViewModel



- (MYINetRequestManager *)manager{
    if (!_manager) {
        _manager = [MYINetRequestManager manager];
    }
    return _manager;
}

+(instancetype)sharedManager
{
   
    id instance = objc_getAssociatedObject(self, @"instance");
    
    if (!instance)
    {
        instance = [[super allocWithZone:NULL] init];
        
        objc_setAssociatedObject(self, @"instance", instance, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return instance;
//    return [self alloc];
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self sharedManager] ;
}

-(id) copyWithZone:(struct _NSZone *)zone
{
    Class selfClass = [self class];
    return [selfClass sharedManager] ;
}

- (void)Cancel{

    [self.manager CanelRequest];
}


@end
