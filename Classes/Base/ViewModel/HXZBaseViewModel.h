//
//  HXZBaseViewModel.h
//  分销电商
//
//  Created by Masteryi on 2016/12/19.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYINetRequestManager.h"

typedef void(^BaseFailureBlock)(BOOL pasttoken,NSString *error);

@interface HXZBaseViewModel : NSObject


@property (nonatomic, strong)MYINetRequestManager *manager;

+ (instancetype)sharedManager;

- (void)Cancel;

@end
