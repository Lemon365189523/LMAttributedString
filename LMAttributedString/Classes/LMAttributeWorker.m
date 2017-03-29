
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

-(void)setUnderlineColor:(UIColor *)color{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSUnderlineColorAttributeName value:color range:[self stringRange]];
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
    [self.attributedString.string addAttribute:NSShadowAttributeName value:shadow range:[self stringRange]];
}

-(void)setTextEffect:(NSString *)textEffect{
    LMNeedSetStringAssert
    //NSTextEffectLetterpressStyle
    [self.attributedString.string addAttribute:NSTextEffectAttributeName value:textEffect range:[self stringRange]];
}


-(void) setLink:(NSString *)link{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSLinkAttributeName value:[NSURL URLWithString:link] range:[self stringRange]];
}

-(void) setBaselineOffset:(NSInteger )offset{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSBaselineOffsetAttributeName value:@(offset) range:[self stringRange]];
}

-(void)setObliqueness:(CGFloat)offset{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSObliquenessAttributeName value:@(offset) range:[self stringRange]];
}

-(void)setExpansion:(CGFloat)expansion{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSExpansionAttributeName value:@(expansion) range:[self stringRange]];
}

-(void)settextComposition:(LMTextCompositionType)type{
    LMNeedSetStringAssert
    [self.attributedString.string addAttribute:NSVerticalGlyphFormAttributeName value:@(type) range:[self stringRange]];
}

-(void) setImage:(NSString *)imageName andBounds:(CGRect) bounds{
    //NSTextAttachment 对象
    LMNeedSetStringAssert
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    
    textAttachment.image = [UIImage imageNamed:imageName];  //设置图片源
    
    textAttachment.bounds = bounds;
    NSAttributedString * imageStr = [NSAttributedString attributedStringWithAttachment:textAttachment];
    
    [self.attributedString.string appendAttributedString:imageStr];
}


-(NSRange ) stringRange{
    return NSMakeRange(0, self.attributedString.string.length);
}

@end
