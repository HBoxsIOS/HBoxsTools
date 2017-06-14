//
//  HXZNavigationConfig.m
//  Pods
//
//  Created by Masteryi on 2017/6/14.
//
//

#import "HXZNavigationConfig.h"

@implementation HXZNavigationConfig

+ (instancetype)defaultConfig{
    
    HXZNavigationConfig *naviConfig = [[HXZNavigationConfig alloc] init];
    
    naviConfig.naviImage = nil;
    naviConfig.naviTitleColor = [UIColor blackColor];
    
    return naviConfig;
}


@end
