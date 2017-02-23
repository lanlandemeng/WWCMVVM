//
//  ViewModel.m
//  WWCMVVM
//
//  Created by WeiChaoW on 2017/2/23.
//  Copyright © 2017年 WeiChaoW. All rights reserved.
//

#import "ViewModel.h"
#import "Model.h"
#import "myTableViewCell.h"

@implementation ViewModel
- (instancetype)init{
    self = [super init];
    if (self) {
        [self getData];
    }
    return self;
}

- (void)getData{
    NSArray *array = @[@[@{@"image" : @"xiongDa", @"title" : @"熊大来了", @"subTitle" : @"熊大来保护森林了，开来看看吧！"},
                         @{@"image" : @"xiongDa", @"title" : @"熊大威武", @"subTitle" : @"熊大在阻止光头强砍树！"}],
                       @[@{@"image" : @"xiongEr", @"title" : @"熊二好萌", @"subTitle" : @"熊二的眼睛是不是特别大呀？"},
                         @{@"image" : @"xiongEr", @"title" : @"熊二劳动", @"subTitle" : @"熊二又开始寻找最爱吃的蜂蜜了。"},
                         @{@"image" : @"xiongEr", @"title" : @"熊二胆小", @"subTitle" : @"熊二看到光头强砍树就吓跑了。"},
                         ]];
    
    for (int i = 0; i < array.count; i++) {
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dictionary in array[i]) {
            [tempArray addObject:[Model modelWithDictionary:dictionary]];
        }
        [self.dataArray addObject:tempArray];
    }
}

- (NSInteger)numberOfSections{
    return self.dataArray.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section{
    return [self.dataArray[section] count];
}

- (myTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    myTableViewCell *cell = [myTableViewCell initWithCellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.section][indexPath.row];
    return cell;
}

- (Model *)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Model *model = self.dataArray[indexPath.section][indexPath.row];
    return model;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    myTableViewCell *cell = (myTableViewCell *)[self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (NSString *)titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"熊大的头";
    }
    return @"熊二的头";
}

- (NSString *)titleForFooterInSection:(NSInteger)section{
    if (section == 0) {
        return @"熊大的尾";
    }
    return @"熊二的尾";
}

- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}


@end
