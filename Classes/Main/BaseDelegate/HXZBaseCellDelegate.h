//
//  HXZBaseCellDelegate.h
//  分销电商
//
//  Created by Masteryi on 2017/3/16.
//  Copyright © 2017年 Masteryi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseCellDelegate <NSObject>

@optional
- (void)CellClick;

- (void)CellClickWithObj:(id)obj;

@end

@interface HXZBaseCellDelegate : NSObject

@end
