//
//  LMAttributeWork.h
//  LMAttributedString
//
//  Created by KADFWJ on 2017/3/29.
//  Copyright © 2017年 Lemon Fan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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

///描绘边颜色
-(void) setStrokeColor:(UIColor *) strokeColor;

///描边宽度
-(void) setStrokeWidth:(NSNumber *) strokeWidth;

@end
