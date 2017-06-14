//
//  HXZNavigationConfig.h
//  Pods
//
//  Created by Masteryi on 2017/6/14.
//
//

#import <Foundation/Foundation.h>

@interface HXZNavigationConfig : NSObject


@property (nonatomic, strong) UIImage *buttonImage;

@property (nonatomic, copy) NSString *buttonTitle;

@property (nonatomic, strong) UIImage *naviImage;

@property (nonatomic, strong) UIColor *naviTitleColor;

+ (instancetype)defaultConfig;


@end
