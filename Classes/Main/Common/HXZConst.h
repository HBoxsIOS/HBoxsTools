//
//  HXZConst.h
//  分销电商
//
//  Created by Masteryi on 2016/10/31.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 间距 */
UIKIT_EXTERN CGFloat const Margin;
/** 左间距 */
UIKIT_EXTERN CGFloat const leftMargin;
/** 导航高度 */
UIKIT_EXTERN CGFloat const NavHeight;
/** 错误信息 */
UIKIT_EXTERN NSString *const ErrorString;
/** 服务器错误 */
UIKIT_EXTERN NSString *const ServiceError;
/** 选择商品数据库 */
UIKIT_EXTERN NSString *const DBNAME;
/** 选择商品数据库 */
UIKIT_EXTERN NSString *const LIVECHOOSEDATABASE;
/** 商品分类表 */
UIKIT_EXTERN NSString *const PRODUCTCLASSIFY;
/** 服务器失败回调 */
typedef void(^RequestFailureBlock)(NSString *error);
