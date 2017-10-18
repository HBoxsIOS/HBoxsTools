//
//  MYINetRequestManager.m
//  分销电商
//
//  Created by Masteryi on 2017/6/7.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "MYINetRequestManager.h"

//#import "HXZAPPManager.h"



@interface MYINetRequestManager()

@property (nonatomic, strong)AFHTTPSessionManager *manager;


@end

@implementation MYINetRequestManager



- (AFHTTPSessionManager *)manager{
    if (!_manager) {
        _manager = [[AFHTTPSessionManager alloc] init];
        NSMutableSet *set = [_manager.responseSerializer.acceptableContentTypes mutableCopy];
        [set addObject:@"text/plain"];
        [set addObject:@"text/html"];
        _manager.responseSerializer.acceptableContentTypes = [set copy];
    }
    return _manager;
}


+ (instancetype)manager{
    return [[MYINetRequestManager alloc] init];
}

#pragma mark - 默认GET请求
- (void)GET:(NSString *)URLString
 parameters:(id)parameters
   progress:(void (^)(NSProgress *downloadProgress))downloadProgress
    success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
    failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure{
    
    [self.manager GET:URLString parameters:parameters progress:downloadProgress success:success failure:failure];
}

#pragma mark - 默认POST请求
- (void)POST:(NSString *)URLString
  parameters:(id)parameters
    progress:(void (^)(NSProgress *uploadProgress))uploadProgress
     success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
     failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure{
    
    [self.manager POST:URLString parameters:parameters progress:uploadProgress success:success failure:failure];

}


#pragma mark - 带progress GET请求
- (void)GET:(NSString *)string
 parameters:(id)parameters
   progress:(void (^)(NSProgress *downloadProgress))downloadProgress
    Success:(SuccessBlock)completion
    failure:(FailureBlock)failure{
    
    [self GET:string parameters:parameters progress:downloadProgress success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        if (MYISUCESS) {
            completion(task, responseObject);
        }else{
            failure(MYIERROR);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        failure(SERVERERROR);
    }];
    
}

#pragma mark - 带progress POST请求
- (void)POST:(NSString *)string
  parameters:(id)parameters
    progress:(void (^)(NSProgress *uploadProgress))uploadProgress
     Success:(SuccessBlock)completion
     failure:(FailureBlock)failure{
    
    [self POST:string parameters:parameters progress:uploadProgress success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        
        if (MYISUCESS) {
            completion(task, responseObject);
        }else{
            failure(MYIERROR);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        failure(SERVERERROR);
    }];
    
}

#pragma mark - 不带progress GET请求
- (void)GET:(NSString *)string
 parameters:(id)parameters
    Success:(SuccessBlock)completion
    failure:(FailureBlock)failure{
    
    [self GET:string parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        if (MYISUCESS) {
            completion(task, responseObject);
        }else{
            failure(MYIERROR);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
      
        failure(SERVERERROR);
    }];
    
}

#pragma mark - 不带progress POST请求
- (void)POST:(NSString *)string
  parameters:(id)parameters
     Success:(SuccessBlock)completion
     failure:(FailureBlock)failure{
    
    [self POST:string parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        
        if (MYISUCESS) {
            completion(task, responseObject);
        }else{
            failure(MYIERROR);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        failure(SERVERERROR);
    }];
    
}



#pragma mark - 带token GET请求
- (void)MYGet:(NSString *)string
   parameters:(id)parameters
      success:(SuccessBlock)completion
 LoginSuccess:(void (^)())loginsuccess
      failure:(FailureBlock)fail{

 
  [self GET:string parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
      
      if (MYISUCESS) {
          completion(task, responseObject);
      }else{
          fail(MYIERROR);
          
          if (MYIISTOKEN) {
              
              
//              UIAlertController *alter = [UIAlertController alertControllerWithTitle:@"账号异常" message:@"用户未登录" preferredStyle:UIAlertControllerStyleAlert];
//              
//              [alter addAction:[UIAlertAction actionWithTitle:@"去登陆" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                  
//                  [[HXZAPPManager sharedAppDelegate] PrsenetToLoginSucess:^{
//                      loginsuccess();
//                  }];
//              }]];
//              
//              [alter addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//                  
//              }]];
//              
//              
//              [[HXZAPPManager sharedAppDelegate].topViewController presentViewController:alter animated:YES completion:nil];
          }
      }

  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
      fail(SERVERERROR);
  }];
    
}

#pragma mark - 带Token POST请求
- (void)MYPost:(NSString *)string
    parameters:(id)parameters
       success:(SuccessBlock)completion
  LoginSuccess:(void (^)())loginsuccess
       failure:(FailureBlock)fail{

    [self POST:string parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        if (MYISUCESS) {
            completion(task, responseObject);
        }else{
            fail(MYIERROR);
            
            if (MYIISTOKEN) {
                
//               
//                UIAlertController *alter = [UIAlertController alertControllerWithTitle:@"账号异常" message:@"用户未登录" preferredStyle:UIAlertControllerStyleAlert];
//                
//                [alter addAction:[UIAlertAction actionWithTitle:@"去登陆" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    
//                    [[HXZAPPManager sharedAppDelegate] PrsenetToLoginSucess:^{
//                        loginsuccess();
//                    }];
//                }]];
//                
//                [alter addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//                    
//                }]];
//                
//                
//                [[HXZAPPManager sharedAppDelegate].topViewController presentViewController:alter animated:YES completion:nil];
                
            }
        }

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        fail(SERVERERROR);
    }];

}

- (void)POST:(NSString *)URLString
  parameters:(id)parameters
constructingBodyWithBlock:(void (^)(id formData))block
    progress:(void (^)(NSProgress *))uploadProgress
     success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
     failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure{
    
    [self.manager POST:URLString parameters:parameters constructingBodyWithBlock:block progress:uploadProgress success:success failure:failure];
    
}

#pragma mark -  取消当前网络请求
- (void)CanelRequest{
    [self.manager.tasks makeObjectsPerformSelector:@selector(cancel)];
}

@end
