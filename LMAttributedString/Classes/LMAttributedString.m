//
//  LMAttributedString.m
//  
//
//  Created by KADFWJ on 2017/3/29.
//
//

#import "LMAttributedString.h"

@interface LMAttributedString ()

@property (nonatomic, readwrite, strong) NSMutableAttributedString *string;
@end

@implementation LMAttributedString

+(instancetype)creatAttrubutedString{
    LMAttributedString *abString = [[LMAttributedString alloc] init];
    abString.string = [[NSMutableAttributedString alloc] initWithString:@""];

    return abString;
}


-(instancetype) initWithAttributedString:(NSMutableAttributedString *)string{
    if (self = [super init]) {
        _string = [[NSMutableAttributedString alloc] initWithAttributedString:string];
    }
    
    return self;
}

-(LMAttributedString *)setAttributes:(LMSetTypeBlock)block{
    NSCParameterAssert(block != NULL);
    LMAttributeWorker *worker = [[LMAttributeWorker alloc] initWithAttributedString:self];
    block(worker);
    return self;
}


-(LMAttributedString *)appendAttributes:(LMSetTypeBlock)block{
    NSCParameterAssert(block != NULL);
    LMAttributedString *attributedString = [LMAttributedString creatAttrubutedString];
    LMAttributeWorker *worker = [[LMAttributeWorker alloc] initWithAttributedString:attributedString];
    block(worker);
    [self.string appendAttributedString:attributedString.string];
    return self;
}

@end
