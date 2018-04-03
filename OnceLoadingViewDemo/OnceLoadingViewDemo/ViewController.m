//
//  ViewController.m
//  OnceLoadingViewDemo
//
//  Created by 曹绍奇 on 2017/10/17.
//  Copyright © 2017年 曹绍奇. All rights reserved.
//

#import "ViewController.h"
#import "OnceLoadingView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //模拟加载
//    [OnceLoadingView showNoNetwork:self.view];
    
//    //模拟加载失败，重新加载回调
//    [OnceLoadingView showLoadingFailed:self.view event:^(UIButton *sender) {
//        //显示转圈
//        [OnceLoadingView showLoading:self.view];
//    }];
//    //数据加载完成后消失
//    [self performSelector:@selector(dis) withObject:self afterDelay:4];
    
    
    //模拟数据没找得到
    [OnceLoadingView showNullWithinView:self.view];
    
    //模拟无网络
//    [OnceLoadingView showNoNetwork:self.view];
}


//4秒后消失，也就是数据加载完成后执行
-(void)dis
{
    [OnceLoadingView dismiss];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
