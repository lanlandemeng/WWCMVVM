//
//  myTableViewCell.m
//  WWCMVVM
//
//  Created by WeiChaoW on 2017/2/23.
//  Copyright © 2017年 WeiChaoW. All rights reserved.
//

#import "myTableViewCell.h"
#import "Model.h"

@interface myTableViewCell ()

@property (nonatomic, weak) UIImageView *imgView;
@property (nonatomic, weak) UILabel *titleLable;
@property (nonatomic, weak) UILabel *subTitleLabel;

@end

@implementation myTableViewCell

+ (instancetype)initWithCellWithTableView:(UITableView *)tableView{
    static NSString *identifier = @"cell";
    myTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[myTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
        imageView.userInteractionEnabled = YES;
        [self.contentView addSubview:imageView];
        self.imgView = imageView;
        
        UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame)+10, 10, 200, 20)];
        titleLable.font = [UIFont systemFontOfSize:20.0f];
        [self.contentView addSubview:titleLable];
        self.titleLable = titleLable;
        
        UILabel *subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, CGRectGetMaxY(titleLable.frame)+20, 200, 20)];
        subTitleLabel.font = [UIFont systemFontOfSize:13.0f];
        [self.contentView addSubview:subTitleLabel];
        self.subTitleLabel = subTitleLabel;
        
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGRectGetMaxY(imageView.frame)+10);
    }
    
    return self;
}

- (void)setModel:(Model *)model
{
    _model = model;
    
    self.imgView.image = [UIImage imageNamed:model.image];
    self.titleLable.text = model.title;
    self.subTitleLabel.text = model.subTitle;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
