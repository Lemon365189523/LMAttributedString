//
//  LMAttributedString.h
//  
//
//  Created by KADFWJ on 2017/3/29.
//
//

#import <Foundation/Foundation.h>
#import "LMAttributeWorker.h"

@class LMAttributeWorker;

typedef void(^LMSetTypeBlock)( LMAttributeWorker *worker);

@interface LMAttributedString : NSObject

@property (nonatomic, readonly, strong) NSMutableAttributedString *string;

+(instancetype) creatAttrubutedString;

-(LMAttributedString *)setAttributes:(LMSetTypeBlock) block;

-(LMAttributedString *) appendAttributes:(LMSetTypeBlock) block;

@end
