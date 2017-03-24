//
//  UIhelpTools.h
//  UIHelperTools
//
//  Created by zhaoml on 16/5/26.
//  Copyright © 2016年 zhaoml. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface UIhelpTools : NSObject

/*!
 *
 *  @brief 颜色转换 IOS中十六进制的颜色转换为UIColor
 *  @param color 字符串
 *
 *  @returnUIColor
 */
+ (UIColor *) colorWithHexString: (NSString *)color;




@end
