//
//  HXZBaseTableModel.m
//  分销电商
//
//  Created by Masteryi on 2017/3/4.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import "HXZBaseTableModel.h"


@interface HXZBaseTableModel()



@end

@implementation HXZBaseTableModel

- (void)handleWithTable:(UITableView *)tableView{
    tableView.delegate = self;
    tableView.dataSource = self;
    
}

- (void)getDataWithArray:(NSMutableArray *)modelArray
              completion:(void (^)())completion{
    self.dataSourceArray = modelArray;
    if (completion) {
        completion();
    }
    
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




@end
