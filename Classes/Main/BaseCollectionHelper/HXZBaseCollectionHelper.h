//
//  HXZBaseCollectionHelper.h
//  分销电商
//
//  Created by Masteryi on 2017/3/15.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HXZBaseCollectionHelper : NSObject<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong)NSMutableArray *dataSourceArray;


/**
 初始化collectionview

 @param collectionview collectionView
 */
- (void)handleWithCollectionView:(UICollectionView *)collectionview;


/**
 传递数据给collectionView

 @param modelArrayBlock 数据源
 @param completion 设置完数据源回调
 */
- (void)getDataWithModelArray:(NSMutableArray *(^)())modelArrayBlock completion:(void (^)())completion;


/**
 设置数据源

 @param modelArrayBlock 数据源
 @param completion 数据源回调
 */
- (void)getArrayWithModelArray:(NSMutableArray *)modelArrayBlock completion:(void (^)())completion;


/**
 加载更多

 @param moreArray 更多数据源
 @param completion 数据源回调
 */
- (void)getDataAddMoreModelArray:(NSArray *)moreArray completion:(void (^)())completion;

@end
