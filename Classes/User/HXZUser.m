//
//  HXZUser.m
//  分销电商
//
//  Created by Masteryi on 2016/12/5.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZUser.h"
#import "HXZUserConfig.h"
#import "NSString+HXZExtension.h"

@implementation HXZUser



+ (HXZUser *)sharedManager{
    
    static HXZUser *sharedAccountManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAccountManagerInstance = [[self alloc] init];
    });
    return sharedAccountManagerInstance;
}


- (void)LoginWithName:(NSString *)username Token:(NSString *)token{
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    [userdefault setObject:username forKey:USERNAME];
    [userdefault setObject:token forKey:TOKEN];
    [userdefault setObject:@YES forKey:ISLOGIN];
    [userdefault synchronize];
    
    self.username = username;
    self.token = token;
}

- (void)setupSEX:(NSString *)sex{
    if (![sex isLength] && [_sex isEqualToString:sex]) {
    
    }else{
        NSString *sexStr = @"";
        if ([sex isEqualToString:@"male"]) {
            sexStr = @"男";
        }else if([sex isEqualToString:@"female"]){
            sexStr = @"女";
        }
        NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
        [userdefault setObject:sexStr forKey:USERSEX];
        [userdefault synchronize];
        self.sex = sex;
    }
  
}

- (void)setupName:(NSString *)name{
    if (![name isLength] && [_name isEqualToString:name]) {
      
    }else{
        NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
        [userdefault setObject:name forKey:NAME];
        [userdefault synchronize];
        self.name = name;
    }

}

- (void)saveTourId:(NSString *)tourId{
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    [userdefault setObject:tourId forKey:TOURID];
    [userdefault synchronize];
    self.tourId = tourId;
    
}

- (void)LoginWithImgURL:(NSString *)url{
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    [userdefault setObject:url forKey:IMG];
    [userdefault synchronize];
    
    self.img = url;
}



- (void)didLogout{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault removeObjectForKey:USERNAME];
    [userDefault removeObjectForKey:IMG];
    [userDefault removeObjectForKey:NAME];
    [userDefault removeObjectForKey:TOKEN];
    [userDefault setObject:@NO forKey:ISLOGIN];
    [userDefault synchronize];
    
//    self.username = nil;
    self.token = nil;
    self.img = nil;
    self.sex = nil;
    self.name = nil;
    // 退出客服
   
}



- (BOOL)isLogin {
    return [[NSUserDefaults standardUserDefaults] boolForKey:ISLOGIN];
}

- (NSString *)username{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:USERNAME];
}

- (NSString *)token{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:TOKEN];
}

- (NSString *)img{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:IMG];
}

- (NSString *)name{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:NAME];
}

- (NSString *)sex{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:USERSEX];
}

- (NSString *)tourId{

    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    return [userDefault objectForKey:TOURID];

}
@end
