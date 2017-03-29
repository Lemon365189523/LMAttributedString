
//
//  LMAttributeWorker.m
//  LMAttributedString
//
//  Created by KADFWJ on 2017/3/29.
//  Copyright © 2017年 Lemon Fan. All rights reserved.
//

#import "LMAttributeWorker.h"
#import "LMAttributedString.h"
#define LMNeedSetStringAssert NSCAssert(self.attributedString.string.length, @"This method must be seted String ");
@interface LMAttributeWorker ()

@property (nonatomic, weak) LMAttributedString *attributedString;

@end

@implementation LMAttributeWorker

-(instancetype)initWithAttributedString:(id)string{
    if (self = [super init]) {
        if ([string isKindOfClass:[LMAttributedString class]]) {
            _attributedString = string;
        }
    }
    return self;
}


-(void)setString:(NSString *)string{
    NSMutableAttributedString *abString = [[NSMutableAttributedString alloc] initWithString:string];
    [self.attributedString.string appendAttributedString:abString];
}

-(void)setFont:(UIFont *)font{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSFontAttributeName value:font range:[self stringRange]];
}


-(void)setForegroundColor:(UIColor *)color{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSForegroundColorAttributeName value:color range:[self stringRange]];
}

-(void)setBackgroundColor:(UIColor *)color{
    LMNeedSetStringAssert;
    [self.attributedString.string addAttribute:NSBackgroundColorAttributeName value:color range:[self stringRange]];
}


-(void)setLigature:(NSNumber *)ligature{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSLigatureAttributeName value:ligature range:[self stringRange]];
}

-(void)setSpace:(NSNumber *)space{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSKernAttributeName value:space range:[self stringRange]];
}

-(void)setStrikethroughHeight:(NSNumber *)height{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSStrikethroughStyleAttributeName value:height range:[self stringRange]];
}

-(void)setUnderlineStyleHeight:(NSNumber *)hetght{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSUnderlineStyleAttributeName value:hetght range:[self stringRange]];
}

-(void)setStrokeColor:(UIColor *)strokeColor{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSStrokeColorAttributeName value:strokeColor range:[self stringRange]];
}

-(void)setStrokeWidth:(NSNumber *)strokeWidth{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSStrokeWidthAttributeName value:strokeWidth range:[self stringRange]];
    
}

-(void) setShadow:(CGSize )shadowOffset andRadius:(CGFloat)shadowBlurRadius andColor:(UIColor *)shadowColor {
    LMNeedSetStringAssert
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = shadowOffset;
    shadow.shadowBlurRadius =  shadowBlurRadius;
    shadow.shadowColor = shadowColor;
}

-(NSRange ) stringRange{
    return NSMakeRange(0, self.attributedString.string.length);
}

@end
