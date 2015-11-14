//
//  ZhengZNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/12.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "ZhengZModel.h"
@interface ZhengZNetManager : BaseNetManager
//http://yunshizhushou.kangfuzi.cn/shicai/
//+(id)postZhengZCompletionHandle:(void(^)(id model, NSError *error))completionHandle;



+(id)getZhengZDetailWithZhengzhuang:(NSString *)zhengz completionHandle:(void(^)(id model, NSError *error))completionHandle;



@end
