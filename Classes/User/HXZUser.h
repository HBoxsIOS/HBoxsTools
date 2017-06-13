//
//  HXZUser.h
//  分销电商
//
//  Created by Masteryi on 2016/12/5.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HXZUser : NSObject


+ (HXZUser *)sharedManager;

@property (nonatomic, copy)NSString *username;

@property (nonatomic, copy)NSString *token;

@property (nonatomic, copy)NSString *img;

@property (nonatomic, copy)NSString *sex;

@property (nonatomic, copy)NSString *name;

@property (nonatomic, copy)NSString *tourId;

/**
 登录

 @param username 用户名
 @param token token
 */
- (void)LoginWithName:(NSString *)username Token:(NSString *)token;


/**
 保存图片url

 @param url 图片url
 */
- (void)LoginWithImgURL:(NSString *)url;

/**
 退出登录
 */
- (void)didLogout;


/**
 是否登录
 */
- (BOOL)isLogin;


/**
 保存性别

 @param sex 性别

 */
- (void)setupSEX:(NSString *)sex;


/**
 保存游客id

 @param tourId 游客id
 */
- (void)saveTourId:(NSString *)tourId;
/**
 保存昵称

 @param name 昵称
 */
- (void)setupName:(NSString *)name;

@end
