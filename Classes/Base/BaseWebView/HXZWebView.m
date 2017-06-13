//
//  HXZWebView.m
//  分销电商
//
//  Created by Masteryi on 2017/2/16.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZWebView.h"

@implementation HXZWebView

- (instancetype)initWithFrame:(CGRect)frame WithURL:(NSString *)url{
    if (self = [super initWithFrame:frame]) {
        NSString *urlStr = url;
        NSURL *httpUrl = [NSURL URLWithString:urlStr];
        NSURLRequest *request = [[NSURLRequest alloc]initWithURL:httpUrl];
        [self loadRequest:request];
    }
    return self;
}


- (void)setupURL:(NSString *)url{
    NSString *urlStr = url;
    NSURL *httpUrl = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:httpUrl];
    [self loadRequest:request];
}

@end
