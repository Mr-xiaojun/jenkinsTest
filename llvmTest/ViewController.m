//
//  ViewController.m
//  llvmTest
//
//  Created by Byron_ma on 17/4/25.
//  Copyright © 2017年 ehsy_it. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"
#import "CaculatorManager.h"
#import <ReactiveCocoa/ReactiveCocoa.h>


@interface ViewController ()
@property(nonatomic, strong)UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   NSInteger result1 = [NSObject makeCaculators:^(CaculatorManager *make) {
        make.add(1).add(2);
    }];
    
    NSInteger result2 = [NSObject makeCaculators:^(CaculatorManager *make) {
        [[make add2:1] add2:2];
    }];
    
    NSLog(@"resul1 = %ld   result2 = %ld",(long)result1,(long)result2);
    
    [[_textField.rac_textSignal filter:^BOOL(id value) {
        NSString *text = value;
        return text.length >3;
    }] subscribeNext:^(id x){
        
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
