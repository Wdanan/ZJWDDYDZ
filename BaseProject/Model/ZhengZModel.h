//
//  ZhengZModel.h
//  BaseProject
//
//  Created by tarena on 15/11/12.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class ZhengZZhengzhuangListModel;
@interface ZhengZModel : BaseModel

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, strong) NSArray<ZhengZZhengzhuangListModel *> *zhengzhuanglist;

@end
@interface ZhengZZhengzhuangListModel : NSObject

@property (nonatomic, copy) NSString *zhaiyao;

@property (nonatomic, copy) NSString *img;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *zhengzhuang;

@end

