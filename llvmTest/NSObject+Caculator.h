//
//  NSObject+Caculator.h
//  llvmTest
//
//  Created by Byron_ma on 17/4/26.
//  Copyright © 2017年 ehsy_it. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CaculatorManager;

@interface NSObject (Caculator)

+(NSInteger)makeCaculators:(void(^)(CaculatorManager *make))block;

@end
