//
//  TwoViewController.m
//  test
//
//  Created by Fiona on 16/3/16.
//  Copyright © 2016年 Fiona. All rights reserved.
//

#import "TwoViewController.h"

@implementation TwoViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *twoButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 20)];
    twoButton.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:twoButton];
    [twoButton addTarget:self action:@selector(notice:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)notice:(id)sender {
    if (self.delegateSignal) {
        [self.delegateSignal sendNext:nil];
    }
}

@end
