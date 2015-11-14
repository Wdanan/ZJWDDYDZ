//
//  ZJModel.m
//  BaseProject
//
//  Created by tarena on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ZJModel.h"

@implementation ZJModel


+ (NSDictionary *)objectClassInArray{
    return @{@"data" : [ZJDataModel class]};
}
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName underlineFromCamel];
}
@end


@implementation ZJDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"paragraphs" : [ZJDataParagraphsModel class]};
}
+(NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id"};
}
//+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
//    //排除掉不需要转化的两个属性， 这是因为服务器人员命名不规范导致的，鄙视下(#‵′)凸
//    //理论上服务器人员应该把下方属性写为total_page, channel_id
//    if ([propertyName isEqualToString:@"shareContents"] || [propertyName isEqualToString:@"isFeatured"]) {
//        return propertyName;
//    }
//    //    驼峰转下划线（loveYou -> love_you）
//    return [propertyName underlineFromCamel];
//}

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName underlineFromCamel];
}

@end


@implementation ZJDataAudioModel

@end


@implementation ZJDataPhotoModel
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName underlineFromCamel];
}
@end


@implementation ZJDataParagraphsModel
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName underlineFromCamel];
}
@end


@implementation ZJDataParagraphsAudioModel

@end


@implementation ZJDataParagraphsPhotoModel

@end


