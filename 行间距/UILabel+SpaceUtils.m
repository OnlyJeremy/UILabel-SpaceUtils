//
//  UILabel+SpaceUtils.m
//  行间距
//
//  Created by Jeremy on 2017/8/8.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "UILabel+SpaceUtils.h"

@implementation UILabel (SpaceUtils)
+(CGSize)SetLabletext:(NSString*)text size:(CGSize)size labFont:(UIFont*)font LineSpce:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace {
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc]init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    lineSpace = lineSpace <= 0 ? 1.0 : lineSpace; //设置行间距
    wordSpace = wordSpace <= 0 ? 1.0 : wordSpace; // 设置字间距
    paraStyle.lineSpacing = lineSpace; // 字体的行间距
    //    paraStyle.hyphenationFactor = 1.0;
    //    paraStyle.firstLineHeadIndent = 20.0f;//首行缩进
    //    paraStyle.alignment = NSTextAlignmentJustified;//（两端对齐的）文本对齐方式：（左，中，右，两端对齐，自然）
    //    paraStyle.minimumLineHeight = 10;//最低行高
    //    paraStyle.maximumLineHeight = 20;//最大行高
    //    paraStyle.paragraphSpacing = 5; //段与段之间的间距
    //    paraStyle.headIndent = 20;//整体缩进(首行除外)
    //    paraStyle.tailIndent = 20;//
    //    paraStyle.paragraphSpacing = 15;//段与段之间的间距
    //    paraStyle.paragraphSpacingBefore = 22.0f;//段首行空白空间
    //    paraStyle.baseWritingDirection = NSWritingDirectionLeftToRight;//从左到右的书写方向（一共➡️三种）
    //    paraStyle.lineHeightMultiple = 15;/* Natural line height is multiplied by this factor (if positive) before being constrained by minimum and maximum line height. */
    
    NSDictionary *attridic = @{NSFontAttributeName:font , NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:@(wordSpace)};
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:text attributes:attridic];
    

    
    
    CGSize descSize = [attributeStr boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin context:nil].size;
    
    return descSize;
}

+(NSAttributedString *)SetLableStr:(NSString*)str labFont:(UIFont*)font LineSpce:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace {
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc]init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    lineSpace = lineSpace <= 0 ? 1.0 : lineSpace; //设置行间距
    wordSpace = wordSpace <= 0 ? 1.0 : wordSpace; // 设置字间距
        paraStyle.lineSpacing = lineSpace; // 字体的行间距
    //    paraStyle.hyphenationFactor = 1.0;
    //    paraStyle.firstLineHeadIndent = 20.0f;//首行缩进
    //    paraStyle.alignment = NSTextAlignmentJustified;//（两端对齐的）文本对齐方式：（左，中，右，两端对齐，自然）
    //    paraStyle.minimumLineHeight = 10;//最低行高
    //    paraStyle.maximumLineHeight = 20;//最大行高
    //    paraStyle.paragraphSpacing = 5; //段与段之间的间距
    //    paraStyle.headIndent = 20;//整体缩进(首行除外)
    //    paraStyle.tailIndent = 20;//
    //    paraStyle.paragraphSpacing = 15;//段与段之间的间距
    //    paraStyle.paragraphSpacingBefore = 22.0f;//段首行空白空间
    //    paraStyle.baseWritingDirection = NSWritingDirectionLeftToRight;//从左到右的书写方向（一共➡️三种）
    //    paraStyle.lineHeightMultiple = 15;/* Natural line height is multiplied by this factor (if positive) before being constrained by minimum and maximum line height. */
    
    NSDictionary *attridic = @{NSFontAttributeName:font , NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:@(wordSpace)};
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:str attributes:attridic];
    
    
    return attributeStr;
}

@end
