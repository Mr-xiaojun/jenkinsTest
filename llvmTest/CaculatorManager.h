//
//  CaculatorManager.h
//  llvmTest
//
//  Created by Byron_ma on 17/4/26.
//  Copyright © 2017年 ehsy_it. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorManager : NSObject
@property (nonatomic ,assign)NSInteger result;

-(CaculatorManager*(^)(NSInteger))add;//oc 不支持函数点语法调用，只能用get方法获得实际执行的block，然后再block中之行操作。
-(CaculatorManager*)add2:(NSInteger)value;
@end
