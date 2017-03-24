//
//  ViewController.m
//  MLAlbum
//
//  Created by zhaoml on 16/8/5.
//  Copyright © 2016年 zhaoml. All rights reserved.
//

#import "ViewController.h"
#import "ImagePickerHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 40,SCREEN_WIDTH, 50);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"添加照片" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnClick {
    
    [[ImagePickerHelper defaultImagePickerHelper]
     showImagePickerWithTarget:self
     andImageNumber:9
     andreturnBlock:^(NSArray *imageArray) {
         ////拿到的图片数组
        
        [self getImageWithImageArray:imageArray];
         
    }];
}

- (void)getImageWithImageArray:(NSArray *)imageArray {
    
    for(id temp in self.view.subviews){
        if (![temp isKindOfClass:[UIButton class]]) {
            [temp removeFromSuperview];
        }
    }
    
    for (int i=0; i<imageArray.count; i++) {
        UIImage *image = [imageArray objectAtIndex:i];
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(10+110 *(i%3), 100+110 * (i/3), 100, 100)];
        imageV.image = image;
        [self.view addSubview:imageV];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
