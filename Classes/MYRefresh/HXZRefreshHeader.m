//
//  HXZRefreshHeader.m
//  零距电商
//
//  Created by Masteryi on 2016/12/12.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "HXZRefreshHeader.h"

@interface HXZRefreshHeader()

@property (weak, nonatomic) UISwitch *s;

@end

@implementation HXZRefreshHeader

- (void)prepare{
    [super prepare];

    [self setTitle:@"" forState:MJRefreshStateIdle];
    [self setTitle:@"" forState:MJRefreshStatePulling];
    [self setTitle:@"" forState:MJRefreshStateRefreshing];
    [self setTitle:@"" forState:MJRefreshStateWillRefresh];
    [self setTitle:@"" forState:MJRefreshStateNoMoreData];
    
    self.lastUpdatedTimeText = ^NSString *(NSDate *lastUpdatedTime) {
      return @"";
    };
}

- (void)placeSubviews{
    [super placeSubviews];
    
}

//- (void)setState:(MJRefreshState)state{
//
//    
//    
//}

@end
