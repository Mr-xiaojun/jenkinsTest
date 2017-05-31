//
//  CaculatorManager.m
//  llvmTest
//
//  Created by Byron_ma on 17/4/26.
//  Copyright © 2017年 ehsy_it. All rights reserved.
//

#import "CaculatorManager.h"

@implementation CaculatorManager
-(CaculatorManager*(^)(NSInteger))add{
    return ^CaculatorManager *(NSInteger value){
        _result += value;
        return self;
    };
}

-(CaculatorManager*)add2:(NSInteger)value{
    _result += value;
    return self;
}
@end
