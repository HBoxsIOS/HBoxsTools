//
//  HXZRefreshFooter.m
//  分销电商
//
//  Created by Masteryi on 2017/4/19.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZRefreshFooter.h"

@implementation HXZRefreshFooter

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)prepare{
    [super prepare];
    
    [self setTitle:@"" forState:MJRefreshStateIdle];
    [self setTitle:@"" forState:MJRefreshStatePulling];
    [self setTitle:@"" forState:MJRefreshStateRefreshing];
    [self setTitle:@"" forState:MJRefreshStateWillRefresh];
    [self setTitle:@"已经拉到底了" forState:MJRefreshStateNoMoreData];
}

- (void)setNomoreData{
    [self setTitle:@"" forState:MJRefreshStateIdle];
    [self setTitle:@"已经拉到底了" forState:MJRefreshStatePulling];
    [self setTitle:@"已经拉到底了" forState:MJRefreshStateRefreshing];
    [self setTitle:@"已经拉到底了" forState:MJRefreshStateWillRefresh];
    [self setTitle:@"已经拉到底了" forState:MJRefreshStateNoMoreData];
    [self endRefreshing];
}

- (void)placeSubviews{
    [super placeSubviews];
}

@end
