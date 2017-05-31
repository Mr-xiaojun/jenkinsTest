//
//  NSObject+Caculator.m
//  llvmTest
//
//  Created by Byron_ma on 17/4/26.
//  Copyright © 2017年 ehsy_it. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorManager.h"

@implementation NSObject (Caculator)

+(NSInteger)makeCaculators:(void(^)(CaculatorManager *make))block{
    CaculatorManager *mgr = [[CaculatorManager alloc] init];
    block(mgr);
    return mgr.result;
}

@end
