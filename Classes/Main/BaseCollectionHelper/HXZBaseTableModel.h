//
//  HXZBaseTableModel.h
//  分销电商
//
//  Created by Masteryi on 2017/3/4.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NSArray *(^MoreBlock)();


@interface HXZBaseTableModel : NSObject<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)NSMutableArray *dataSourceArray;

@property (nonatomic, strong)UITableView *tableView;


- (void)handleWithTable:(UITableView *)tableView;


- (void)getDataWithModelArray:(NSMutableArray *(^)())modelArrayBlock
                   completion:(void (^)())completion;

- (void)getDataWithArray:(NSMutableArray *)modelArray
                   completion:(void (^)())completion;

- (void)getDataAddMoreModelArray:(NSArray *)moreArray completion:(void (^)())completion;



@end
