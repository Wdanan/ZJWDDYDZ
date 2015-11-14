//
//  ZJModel.h
//  BaseProject
//
//  Created by tarena on 15/11/6.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class ZJDataModel,ZJDataAudioModel,ZJDataPhotoModel,ZJDataParagraphsModel,ZJDataParagraphsAudioModel,ZJDataParagraphsPhotoModel;
@interface ZJModel : BaseModel

@property (nonatomic, assign) BOOL success;

@property (nonatomic, assign) BOOL requireLogin;

@property (nonatomic, strong) NSArray<ZJDataModel *> *data;



@end
@interface ZJDataModel : NSObject

@property (nonatomic, assign) BOOL cached;

@property (nonatomic, copy) NSString *author;

@property (nonatomic, copy) NSString *shareContents;

@property (nonatomic, strong) NSArray<ZJDataParagraphsModel *> *paragraphs;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, assign) BOOL isFeatured;

@property (nonatomic, copy) NSString *summary;

@property (nonatomic, copy) NSString *iconUrl;

@property (nonatomic, copy) NSString *webUrl;

@property (nonatomic, assign) NSInteger numOfComments;

@property (nonatomic, copy) NSString *externalLink;

#pragma mark - id修改啦
@property (nonatomic, strong) NSNumber *ID;

@property (nonatomic, assign) NSInteger user;

@property (nonatomic, strong) ZJDataAudioModel *audio;

@property (nonatomic, assign) BOOL trained;

@property (nonatomic, assign) BOOL isBookmarked;

@property (nonatomic, strong) ZJDataPhotoModel *photo;

//@property (nonatomic, assign) long long order;
@property (nonatomic, strong)NSString *order;

@property (nonatomic, copy) NSString *supportDevice;

@property (nonatomic, copy) NSString *bgUrl;

@property (nonatomic, copy) NSString *articleType;

@end

@interface ZJDataAudioModel : NSObject

@end

@interface ZJDataPhotoModel : NSObject

@property (nonatomic, assign) BOOL cached;

@property (nonatomic, copy) NSString *thumbUrl;

@property (nonatomic, copy) NSString *originalUrl;

@property (nonatomic, copy) NSString *mobileUrl;

@property (nonatomic, copy) NSString *mobileLargeUrl;

@end

@interface ZJDataParagraphsModel : NSObject

@property (nonatomic, copy) NSString *content;

@property (nonatomic, strong) ZJDataParagraphsAudioModel *audio;

@property (nonatomic, copy) NSString *externalLink;

@property (nonatomic, strong) ZJDataParagraphsPhotoModel *photo;

@property (nonatomic, copy) NSString *title;

@end

@interface ZJDataParagraphsAudioModel : NSObject

@end

@interface ZJDataParagraphsPhotoModel : NSObject

@end

