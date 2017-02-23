//
//  Model.h
//  WWCMVVM
//
//  Created by WeiChaoW on 2017/2/23.
//  Copyright © 2017年 WeiChaoW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, copy) NSString *image;//图片
@property (nonatomic, copy) NSString *title;//标题
@property (nonatomic, copy) NSString *subTitle;//副标题

//字典转模型
- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (id)modelWithDictionary:(NSDictionary *)dictionary;

@end
