//
//  LMAttributeWork.h
//  LMAttributedString
//
//  Created by KADFWJ on 2017/3/29.
//  Copyright © 2017年 Lemon Fan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    LMTextCompositionHorizontal = 0,//横排文本
    LMTextCompositionVertical = 1 //竖排文本
 
} LMTextCompositionType;

typedef enum : NSUInteger {
    LMTextNotLigature = 0, //没有连体字符
    LMDefaultLigature = 1, //表示使用默认的连体字符
    LMOtherLigature = 2 //表示使用所有连体符号
} LMTextLigatureType;

@protocol LMAttributeWork <NSObject>


/**
 设置文本（注意一个worker只能设置一次文本）

 @param string 文本
 */
-(void) setString:(nonnull NSString *)string;

/**
 删除线

 @param style 线的类型
 @param color 线的颜色
 */
-(void) setStrikethroughStyle:(NSUnderlineStyle) style andColor:(nullable UIColor *) color;

/**
 下划线

 @param style 下划线的类型
 @param color 下划线颜色
 */
-(void) setUnderlineStyle:(NSUnderlineStyle ) style andColor:(nullable UIColor*) color ;

/**
 描边（空心效果）

 @param strokeWidth 数值设置为负数,就没有空心字的效果
 @param strokeColor 描边颜色
 */
-(void) setStrokeWidth:(CGFloat ) strokeWidth andColor:(nullable UIColor *) strokeColor;


/**
 设置阴影

 @param shadowOffset 阴影的偏移量
 @param shadowBlurRadius 模糊度
 @param shadowColor 阴影颜色
 */
-(void) setShadow:(CGSize )shadowOffset andRadius:(CGFloat)shadowBlurRadius andColor:(nullable UIColor *)shadowColor;

/**
 自定义段落
 
 @param style NSMutableParagraphStyle 自定义段落对象
 */
-(void) setParagraphStyle:(nonnull NSMutableParagraphStyle *) style;

NS_ASSUME_NONNULL_BEGIN

/**
 字体

 @param font 设置字体样式
 */
-(void) setFont:(UIFont *)font;

/**
 文字颜色

 @param color 颜色
 */
-(void) setTextColor:(UIColor *) color;


/**
 背景色

 @param color 颜色
 */
-(void) setBackgroundColor:(UIColor *) color;


/**
 设置连体字符

 @param ligature 连体字符类型
 */
-(void) setLigature:(LMTextLigatureType ) ligature;


/**
 字符间隔

 @param space 间隔
 */
-(void) setSpace:(CGFloat )space;


/**
 文字效果

 @param textEffect 文字效果
 */
-(void) setTextEffect:(NSString *) textEffect;


/**
 设置网址

 @param link 设置文本为网址
 */
-(void) setLink:(NSString *)link;


/**
 文本的基础偏移量

 @param offset 负数向下偏移 正数向上偏移
 */
-(void) setBaselineOffset:(NSInteger )offset;


/**
 字体倾斜

 @param offset 正值右倾，负值左倾
 */
-(void) setObliqueness:(CGFloat ) offset;

/**
 设置文本横向拉伸属性

 @param expansion 正值横向拉伸文本，负值横向压缩文本
 */
-(void) setExpansion:(CGFloat) expansion;


/**
 设置文字排版防线

 @param type 0 表示横排文本，1 表示竖排文本
 */
-(void) setTextComposition:(LMTextCompositionType) type;


/**
 设置图片

 @param imageName 图片名字
 @param bounds 图片的bounds
 */
-(void) setImage:(NSString *)imageName andBounds:(CGRect) bounds;


/**
 设置行距

 @param lineSpacing 行距
 */
-(void) setlineSpacing:(CGFloat) lineSpacing;


/**
 设置文本的对齐方式

 @param alignmemt NSTextAlignment
 */
-(void) setTextAlignment:(NSTextAlignment) alignmemt;


/**
 截断模式

 @param lineBreakMode NSLineBreakMode
 */
-(void) setlineBreakMode:(NSLineBreakMode) lineBreakMode;

NS_ASSUME_NONNULL_END
@end
