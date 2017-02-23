//
//  myTableViewCell.h
//  WWCMVVM
//
//  Created by WeiChaoW on 2017/2/23.
//  Copyright © 2017年 WeiChaoW. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Model;

@interface myTableViewCell : UITableViewCell

@property (nonatomic, strong) Model *model;

+ (instancetype)initWithCellWithTableView:(UITableView *)tableView;

@end
