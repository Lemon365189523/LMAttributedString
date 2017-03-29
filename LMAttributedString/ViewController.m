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
    
    LMAttributedString *string = [[[[LMAttributedString creatAttrubutedString] setAttributes:^(LMAttributeWorker *worker) {
        [worker setString:@"flush"];
        [worker setFont:[UIFont fontWithName:@"futura" size:20.0]];
        [worker setForegroundColor:[UIColor redColor]];
        [worker setBackgroundColor:[UIColor greenColor]];
        [worker setLigature:@(2)];
    }]appendAttributes:^(LMAttributeWorker *worker) {
        [worker setString:@".flush"];
        [worker setFont:[UIFont fontWithName: @"futura" size: 30]];
        [worker setForegroundColor:[UIColor blueColor]];
        [worker setLigature:@(0)];
        [worker setSpace:@(3)];
        [worker setStrikethroughHeight:@(4)];
    }] appendAttributes:^(LMAttributeWorker *worker) {
        [worker setString:@"..adidas"];
        [worker setStrokeColor:[UIColor purpleColor]];
        [worker setUnderlineStyleHeight:@(2)];
        [worker setStrokeWidth:@(1)];
    }];
    
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor lightGrayColor];
    label.frame = CGRectMake(30, 60, 280, 200);
    label.attributedText = string.string;
    [self.view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.backgroundColor = [UIColor groupTableViewBackgroundColor];
    label2.numberOfLines = 0;
    label2.frame = CGRectMake(30, 280, 280, 200);
    label2.attributedText = string.string;
    [self.view addSubview:label2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
