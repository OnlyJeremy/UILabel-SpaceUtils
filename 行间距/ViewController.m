//
//  ViewController.m
//  行间距
//
//  Created by Jeremy on 2017/8/8.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+SpaceUtils.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str = @"亲兄弟为家国“相爱相杀”，耶亚希“爱我还是他”，还有“爱你是我的事与你无关”的神秘仙子横艾，已故但随时可能复活的存在感超强的兰茵妹纸，以及技能为0但确是幕后大boss的紫衣大大！有点厉害了我的暮云，用轩辕剑气斩断了流马渊粮道，尧汉十万军粮一秒木有了，以焉逢为队长的飞羽必须接受军法处置，暮云妥妥的“坑”了哥哥一把！尧汉失去了粮食，向苍梧族寻求帮助，所以苍梧族的郡主耶亚希就要上线啦~技能：让粮食快速生长！（吃货如我，也get同款技能呢）两个人在互相看不顺眼之时，树妖出没，耶亚希遇险，被疾驰而来的焉逢大人砍断树妖救下！三张动图告诉你什么是360度无死角发糖~";
    UILabel *lab = [[UILabel alloc] init];
    lab.frame = CGRectMake(10, 100, 300, 300);
    lab.backgroundColor = [UIColor orangeColor];
    lab.numberOfLines = 0;
    lab.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:lab];
  

    
    
        CGSize size = [UILabel SetLabletext:str size:CGSizeMake(300, MAXFLOAT) labFont:[UIFont systemFontOfSize:14] LineSpce:15 WordSpace:1];
        lab.frame = CGRectMake(10, 100, size.width, size.height);
    NSAttributedString *attbuteStr = [UILabel SetLableStr:str labFont:[UIFont systemFontOfSize:14] LineSpce:15 WordSpace:1];
    lab.attributedText = attbuteStr;


    
    
    
    
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
