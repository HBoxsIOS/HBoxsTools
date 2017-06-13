//
//  HXZToolHeader.h
//  分销电商
//
//  Created by Masteryi on 2017/6/3.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#ifndef HXZToolHeader_h
#define HXZToolHeader_h


#endif /* HXZToolHeader_h */

//#import "HXZCategory.h"

/** 白色 */
#define  WhiteColor [UIColor whiteColor]

/** 灰色 */
#define GrayColor HXZRGB(235, 234, 241)

/** 主色调 */
#define BaseColor HXZRGB(242, 48, 48)

/** 主要文字 */
#define MainTitleColor HXZRGB(51, 51, 51)
/** 次要文字 */
#define MinorTitleColor HXZRGB(128, 128, 128)
/** 描述性文字 */
#define DescribeTitleColor HXZRGB(179, 179, 179)
/** 线条颜色 */
#define LineColor HXZRGB(238, 238, 238)


/** 屏幕宽高 */
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
/** 颜色RGB 透明度 */
#define HXZRGB(a,b,c) [UIColor colorWithRed:(a/255.0) green:(b/255.0) blue:(c/255.0) alpha:1.0]
#define HXZRGBA(a,b,c,d) [UIColor colorWithRed:(a/255.0) green:(b/255.0) blue:(c/255.0) alpha:d]

#define KeyWindow [UIApplication sharedApplication].keyWindow
/** 随机颜色 */
#define RandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

/** 文字高度 */
#define HXZSizeH(String ,Font) [String sizeWithAttributes:@{NSFontAttributeName : Font}].height
/** 文字宽度 */
#define HXZSizeW(String ,Font) [String sizeWithAttributes:@{NSFontAttributeName : Font}].width
#define boundW(String,Font) [String boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes: @{NSFontAttributeName:Font} context:nil].size.width
/** 获取本地资源 */
#define GetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]
/** 打印当前函数名称 */
#define HXZ_FUNC NSLog(@"%s",__func__);

/** 打印控制器销毁信息 */
#define HXZ_Delloc NSLog(@"%@被销毁了",NSStringFromClass([self class]));

/** 文字大小 */
#define BaseFont(A) [UIFont systemFontOfSize:A];
/** 自身弱引用 */
#define WeakSelf __weak typeof(self) weakSelf = self;
/** 本地路径 */
#define HXZ_File NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)

/** 是否请求成功 */
#define sucess [responseObject[@"code"] isEqual:@0]

/** 是否请求成功 */
#define istoken [responseObject[@"code"] isEqual:@2]
/** 错误打印 */
#define ErrorMessage responseObject[@"errmsg"]

#define HXZLogResult NSLog(@"%@,%@",responseObject,ErrorMessage);

#define HXZ_WriteToPlist(data, filename) [data writeToFile:[NSString stringWithFormat:@"/Users/masteryi/Desktop/%@.plist", filename] atomically:YES];
