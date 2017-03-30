# LMAttributedString是一个函数式编辑富文本的库

写这个库的原因是在学习ReactiveCocoa时候，理解了那么一点点的关于函数式编程的思想而写的，所以写的比较简陋望见谅。

###CovoaPods
使用CocoaPods `LMAttributedString`融入您的Xcode项目,在你指定它在你的Podfile。

```
pod 'LMAttributedString'
```


###关于怎么使用
先创建一个LMAttributedString对象，`[LMAttributedString creatAttrubutedString]`,然后调用`setAttributes:`的方法。该方法是一个block里面有个`LMAttributeWorker`对象，用该对象来设置文本和效果。一个worker只操作对应设置的文本。
操作完毕把`LMAttributedString`对象里的`string`属性设置到UIlable或其他控件中`label.attributedText = attribute.string;`

效果图
![效果图01](https://github.com/Lemon365189523/LMAttributedString/blob/master/效果图01.png)



```Objective-C
LMAttributedString *attribute = [[[[LMAttributedString creatAttrubutedString] setAttributes:^(LMAttributeWorker *worker) {
   [worker setString:@"my "];
   [worker setFont:[UIFont fontWithName:@"futura" size:20.0]];
   [worker setTextColor:[UIColor redColor]];
   [worker setBackgroundColor:[UIColor greenColor]];
   [worker setLigature:LMOtherLigature];
}]appendAttributes:^(LMAttributeWorker *worker) {
   [worker setString:@"name is"];
   [worker setFont:[UIFont fontWithName: @"futura" size: 30]];
   [worker setTextColor:[UIColor blueColor]];
   [worker setLigature:LMTextNotLigature];
   [worker setSpace:3];
}] appendAttributes:^(LMAttributeWorker *worker) {
   [worker setString:@"Lemon"];
   [worker setShadow:CGSizeMake(0, 1) andRadius:5 andColor:[UIColor greenColor]];
   [worker setLink:@"www.baidu.com"];
   [worker setFont:[UIFont systemFontOfSize:15]];
   [worker setBaselineOffset:-10];
   [worker setObliqueness:0.5];
   [worker setExpansion:-0.5];
   [worker setImage:@"lemon" andBounds:CGRectMake(0, 0, 30, 30)];
}];
```


![效果图02](https://github.com/Lemon365189523/LMAttributedString/blob/master/效果图02.png)


```Objective-C
LMAttributedString *attribute = [[LMAttributedString creatAttrubutedString] setAttributes:^(LMAttributeWorker *worker) {
   [worker setString:@"写这个库的原因是在学习ReactiveCocoa时候，理解了那么一定点的关于函数式编程的思想而写的。"];
   [worker setlineSpacing:4];
   [worker setlineBreakMode:NSLineBreakByCharWrapping];
   [worker setTextAlignment:NSTextAlignmentRight];
   [worker setUnderlineStyle:NSUnderlineStyleThick andColor:[UIColor whiteColor]];
   [worker setStrokeWidth:3 andColor:[UIColor purpleColor]];
   
}];
```

该库是刚刚开始写，很多地方需要优化，希望大家能给点意见，和那些地方不好也希望提点。

[这是我的博客！](lemonfan.cn)


