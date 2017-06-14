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
    
    
    naviConfig.naviTitleColor = [UIColor blackColor];
    
    naviConfig.buttonFrame = CGRectMake(0, 0, 35, 35);
    
    naviConfig.buttonInsets = UIEdgeInsetsMake(3, -10, 3, 2);
    
    return naviConfig;
}


@end
