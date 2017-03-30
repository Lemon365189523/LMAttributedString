//
//  ViewController.m
//  LMAttributedString
//
//  Created by KADFWJ on 2017/3/29.
//  Copyright © 2017年 Lemon Fan. All rights reserved.
//

#import "ViewController.h"
#import "LMAttributedString.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    LMAttributedString *attribute = [[[[LMAttributedString creatAttrubutedString] setAttributes:^(LMAttributeWorker *worker) {
//        [worker setString:@"my "];
//        [worker setFont:[UIFont fontWithName:@"futura" size:20.0]];
//        [worker setTextColor:[UIColor redColor]];
//        [worker setBackgroundColor:[UIColor greenColor]];
//        [worker setLigature:LMOtherLigature];
//    }]appendAttributes:^(LMAttributeWorker *worker) {
//        [worker setString:@"name is"];
//        [worker setFont:[UIFont fontWithName: @"futura" size: 30]];
//        [worker setTextColor:[UIColor blueColor]];
//        [worker setLigature:LMTextNotLigature];
//        [worker setSpace:3];
//    }] appendAttributes:^(LMAttributeWorker *worker) {
//        [worker setString:@"Lemon"];
//        [worker setShadow:CGSizeMake(0, 1) andRadius:5 andColor:[UIColor greenColor]];
//        [worker setLink:@"www.baidu.com"];
//        [worker setFont:[UIFont systemFontOfSize:15]];
//        [worker setBaselineOffset:-10];
//        [worker setObliqueness:0.5];
//        [worker setExpansion:-0.5];
//        [worker setImage:@"lemon" andBounds:CGRectMake(0, 0, 30, 30)];
//    }];
    
    LMAttributedString *attribute = [[LMAttributedString creatAttrubutedString] setAttributes:^(LMAttributeWorker *worker) {
        [worker setString:@"写这个库的原因是在学习ReactiveCocoa时候，理解了那么一定点的关于函数式编程的思想而写的。"];
        [worker setlineSpacing:4];
        [worker setlineBreakMode:NSLineBreakByCharWrapping];
        [worker setTextAlignment:NSTextAlignmentRight];
        [worker setUnderlineStyle:NSUnderlineStyleThick andColor:[UIColor whiteColor]];
        [worker setStrokeWidth:3 andColor:[UIColor purpleColor]];
        
    }];
    
    
    
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor lightGrayColor];
    label.frame = CGRectMake(30, 60, 280, 200);
    label.attributedText = attribute.string;
    [self.view addSubview:label];
    
//    UILabel *label2 = [[UILabel alloc] init];
//    label2.backgroundColor = [UIColor groupTableViewBackgroundColor];
//    label2.numberOfLines = 0;
//    label2.frame = CGRectMake(30, 280, 280, 200);
//    label2.attributedText = attribute.string;
//    [self.view addSubview:label2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
