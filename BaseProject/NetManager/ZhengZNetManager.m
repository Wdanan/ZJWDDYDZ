//
//  ZhengZNetManager.m
//  BaseProject
//
//  Created by tarena on 15/11/12.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ZhengZNetManager.h"

@implementation ZhengZNetManager

//http://yunshizhushou.kangfuzi.cn/shicai?action=get_zhengzhuang_html&zhengzhuang=%E4%B8%8A%E7%81%AB&from=ios

+(id)getZhengZDetailWithZhengzhuang:(NSString *)zhengz completionHandle:(void(^)(id model, NSError *error))completionHandle{
    NSString *path =[NSString stringWithFormat:@"http://yunshizhushou.kangfuzi.cn/shicai?action=get_zhengzhuang_html&zhengzhuang=%@&from=ios",zhengz];
    
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([ZhengZModel objectWithKeyValues:responseObj],error);
    }];
}

//+(id)postZhengZCompletionHandle:(void(^)(id model, NSError *error))completionHandle{
//    
//    NSString *path = @"http://yunshizhushou.kangfuzi.cn/shicai/";
//    return [self POST:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
//        completionHandle([ZhengZModel objectWithKeyValues:responseObj],error);
//    }];
//    
//}



@end












