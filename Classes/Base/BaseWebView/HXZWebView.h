//
//  HXZWebView.h
//  分销电商
//
//  Created by Masteryi on 2017/2/16.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HXZWebView : UIWebView

- (instancetype)initWithFrame:(CGRect)frame WithURL:(NSString *)url;

- (void)setupURL:(NSString *)url;

@end
