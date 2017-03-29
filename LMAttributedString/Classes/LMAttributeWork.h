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

@protocol LMAttributeWork <NSObject>

///文本
-(void) setString:(NSString *)string;

///字体
-(void) setFont:(UIFont *)font;

///文字颜色
-(void) setForegroundColor:(UIColor *) color;

///背景色
-(void) setBackgroundColor:(UIColor *) color;

///0 表示没有连体字符。1 表示使用默认的连体字符。2表示使用所有连体符号。默认值为 1
-(void) setLigature:(NSNumber *) ligature;

///字符间隔
-(void) setSpace:(NSNumber *)space;

///删除线的高度
-(void) setStrikethroughHeight:(NSNumber *) height;

///下划线的高度
-(void) setUnderlineStyleHeight:(NSNumber *) hetght;

///下划线颜色
-(void) setUnderlineColor:(UIColor *) color;

///描绘边颜色
-(void) setStrokeColor:(UIColor *) strokeColor;

///描边宽度
-(void) setStrokeWidth:(NSNumber *) strokeWidth;

///阴影
-(void) setShadow:(CGSize )shadowOffset andRadius:(CGFloat)shadowBlurRadius andColor:(UIColor *)shadowColor;

///文字效果
-(void) setTextEffect:(NSString *) textEffect;

///设置网址
-(void) setLink:(NSString *)link;

///基础偏移量 负数向下偏移 正数向上偏移
-(void) setBaselineOffset:(NSInteger )offset;

///字体倾斜 设置字形倾斜度，取值为（float）,正值右倾，负值左倾
-(void) setObliqueness:(CGFloat ) offset;

///设置文本横向拉伸属性，取值为 NSNumber （float）,正值横向拉伸文本，负值横向压缩文本
-(void) setExpansion:(CGFloat) expansion;

//设置文字排版防线 0 表示横排文本，1 表示竖排文本
-(void) settextComposition:(LMTextCompositionType) type;

///设置图片
-(void) setImage:(NSString *)imageName andBounds:(CGRect) bounds;
@end
