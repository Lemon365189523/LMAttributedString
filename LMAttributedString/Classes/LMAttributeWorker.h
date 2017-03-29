//
//  LMAttributeWorker.h
//  LMAttributedString
//
//  Created by KADFWJ on 2017/3/29.
//  Copyright © 2017年 Lemon Fan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LMAttributeWork.h"

@interface LMAttributeWorker : NSObject<LMAttributeWork>

-(instancetype) initWithAttributedString:(id) string;

@end
