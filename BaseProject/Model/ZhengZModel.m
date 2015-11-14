//
//  ZhengZModel.m
//  BaseProject
//
//  Created by tarena on 15/11/12.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ZhengZModel.h"

@implementation ZhengZModel

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    
    return [propertyName underlineFromCamel];
}

+ (NSDictionary *)objectClassInArray{
    return @{@"zhengzhuanglist" : [ZhengZZhengzhuangListModel class]};
}
@end
@implementation ZhengZZhengzhuangListModel

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    
    return [propertyName underlineFromCamel];
}

@end


