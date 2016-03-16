//
//  TwoViewController.h
//  test
//
//  Created by Fiona on 16/3/16.
//  Copyright © 2016年 Fiona. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReactiveCocoa.h"

@interface TwoViewController : UIViewController

@property (nonatomic,strong) RACSubject *delegateSignal;

@end
