//
//  HXZBaseCollectionHelper.m
//  分销电商
//
//  Created by Masteryi on 2017/3/15.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZBaseCollectionHelper.h"

@interface HXZBaseCollectionHelper()



@end

@implementation HXZBaseCollectionHelper


- (void)handleWithCollectionView:(UICollectionView *)collectionview{
    collectionview.delegate = self;
    collectionview.dataSource = self;
    
}

- (void)getDataWithModelArray:(NSMutableArray *(^)())modelArrayBlock completion:(void (^)())completion {
    if (modelArrayBlock) {
        
        self.dataSourceArray = modelArrayBlock();
        if (completion) {
            completion();
        }
    }
    
}

- (void)getDataAddMoreModelArray:(NSArray *)moreArray completion:(void (^)())completion{
    if (moreArray) {
        [self.dataSourceArray addObjectsFromArray:moreArray];
        if (completion) {
            completion();
        }
    }
}

- (void)getArrayWithModelArray:(NSMutableArray *)modelArrayBlock completion:(void (^)())completion{
    self.dataSourceArray = modelArrayBlock;
    if (completion) {
        completion();
    }
}
@end
