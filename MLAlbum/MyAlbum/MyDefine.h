//
//  MyDefine.h
//  MLAlbum
//
//  Created by zhaoml on 16/8/12.
//  Copyright © 2016年 zhaoml. All rights reserved.
//

#ifndef MyDefine_h
#define MyDefine_h

#define MyWindow             [UIApplication sharedApplication].keyWindow
///屏幕宽
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
///屏幕高
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

/// UIView的末尾(y)
#define ViewEndH(view)       (view.frame.size.height + view.frame.origin.y)
/// UIView的末尾(x)
#define ViewEndX(view)       (view.frame.size.width + view.frame.origin.x)

#endif /* MyDefine_h */
