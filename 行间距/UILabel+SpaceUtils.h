//
//  UILabel+SpaceUtils.h
//  行间距
//
//  Created by Jeremy on 2017/8/8.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SpaceUtils)

/**
 计算并返回文本高度

 @param text 字符串
 @param font 字体
 @param size 控件的宽高
 @param lineSpace 行间距
 @param wordSpace 字间距
 @return 返回CGSize结构体
 */
+(CGSize)SetLabletext:(NSString*)text size:(CGSize)size labFont:(UIFont*)font LineSpce:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace;

/**
 设置行间距和字间距后返回富文本字符串

 @param str 字符串
 @param font 字体
 @param lineSpace 行间距
 @param wordSpace 字间距
 @return 返回富文本字符串 NSAttributedString
 */
+(NSAttributedString *)SetLableStr:(NSString*)str labFont:(UIFont*)font LineSpce:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace;
@end
