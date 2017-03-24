//
//  MLSelectImageCollectionViewCell.m
//  MLAlbum
//
//  Created by zhaoml on 16/8/5.
//  Copyright © 2016年 zhaoml. All rights reserved.
//

#import "MLSelectImageCollectionViewCell.h"


@implementation MLSelectImageCollectionViewCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        _image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, (SCREEN_WIDTH-20)/3, (SCREEN_WIDTH-20)/3)];
        [self addSubview:_image];
        
        _selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_selectBtn setImage:[UIImage imageNamed:@"未选中"] forState:UIControlStateNormal];
        _selectBtn.frame = CGRectMake((SCREEN_WIDTH-30)/3 - 25, 0, 25, 25);
        _selectBtn.imageEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 10);
        [_selectBtn addTarget:self action:@selector(selectClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_selectBtn];
        
    }
    return self;
}

- (void)selectClick:(UIButton *)btn {
    SinglePhotoNumber *phone = [SinglePhotoNumber shareSinglePhotoNumber];
    if (phone.photoNumber >= phone.totalNumber && !btn.selected) {
        
        UIAlertView *aler = [[UIAlertView alloc]initWithTitle:@"提示" message:[NSString stringWithFormat:@"您最多能选择%ld张照片",(long)phone.totalNumber] delegate:self cancelButtonTitle:@"好滴好滴" otherButtonTitles: nil];
        [aler show];
        return;
    }
    btn.selected = !btn.selected;
    NSString *imageName = btn.selected?@"选中":@"未选中";
    [_selectBtn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [self.delegate selectImageWithIndex:btn.tag - 9999999999 andIfSelect:btn.selected];
}

@end
