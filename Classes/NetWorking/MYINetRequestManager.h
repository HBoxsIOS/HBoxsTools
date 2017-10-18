//
//  MYINetRequestManager.h
//  分销电商
//
//  Created by Masteryi on 2017/6/7.
//  Copyright © 2017年 Masteryi. All rights reserved.
//


#import <AFNetworking/AFNetworking.h>

#define MYISUCESS [responseObject[@"code"] isEqual:@0]
#define MYIERROR responseObject[@"errmsg"]
#define MYIISTOKEN [responseObject[@"code"] isEqual:@2]

typedef void(^SuccessBlock)(NSURLSessionDataTask *task, id responseObject);

typedef void(^FailureBlock)(NSString *error);

static NSString *const SERVERERROR = @"服务器开了小差,稍后再试";

@interface MYINetRequestManager : NSObject

/**
 创建网络请求实例
 */
+ (instancetype)manager;

/**
 默认GET
 */
- (void)GET:(NSString *)URLString
 parameters:(id)parameters
   progress:(void (^)(NSProgress *downloadProgress))downloadProgress
    success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
    failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;


/**
 默认POST
 */
- (void)POST:(NSString *)URLString
  parameters:(id)parameters
    progress:(void (^)(NSProgress *uploadProgress))uploadProgress
     success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
     failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

/**
 带progress GET请求
 */
- (void)GET:(NSString *)string
 parameters:(id)parameters
   progress:(void (^)(NSProgress *downloadProgress))downloadProgress
    Success:(SuccessBlock)completion
    failure:(FailureBlock)failure;


/**
 带progress POST请求
 */
- (void)POST:(NSString *)string
  parameters:(id)parameters
    progress:(void (^)(NSProgress *uploadProgress))uploadProgress
     Success:(SuccessBlock)completion
     failure:(FailureBlock)failure;


/**
 不带progress POST请求
 */
- (void)POST:(NSString *)string
  parameters:(id)parameters
     Success:(SuccessBlock)completion
     failure:(FailureBlock)failure;


/**
 不带progress GET请求
 */
- (void)GET:(NSString *)string
 parameters:(id)parameters
    Success:(SuccessBlock)completion
    failure:(FailureBlock)failure;


/**
 带token get 请求
 */
- (void)MYGet:(NSString *)string
   parameters:(id)parameters
      success:(SuccessBlock)completion
 LoginSuccess:(void (^)())loginsuccess
      failure:(FailureBlock)fail;


/**
 带token post 请求
 */
- (void)MYPost:(NSString *)string
    parameters:(id)parameters
       success:(SuccessBlock)completion
  LoginSuccess:(void (^)())loginsuccess
       failure:(FailureBlock)fail;

/**
 上传图片
 */
- (void)POST:(NSString *)URLString
  parameters:(id)parameters
constructingBodyWithBlock:(void (^)(id formData))block
    progress:(void (^)(NSProgress *))uploadProgress
     success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
     failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;


/**
 取消当前网络请求
 */
- (void)CanelRequest;

@end
