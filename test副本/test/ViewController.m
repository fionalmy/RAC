//
//  ViewController.m
//  test
//
//  Created by Fiona on 15/12/28.
//  Copyright © 2015年 Fiona. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
#import "TwoViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *oneButton;
@end
@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    _oneButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 20)];
    [_oneButton setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:_oneButton];
    [_oneButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClick:(id)sender {
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    twoVC.delegateSignal = [RACSubject subject];
    
    [twoVC.delegateSignal subscribeNext:^(id x) {
        NSLog(@"点击了通知按钮");
    }];
    [self presentViewController:twoVC animated:YES completion:nil];
}

@end
