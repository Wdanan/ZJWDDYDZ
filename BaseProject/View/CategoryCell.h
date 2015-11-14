//
//  CategoryCell.h
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryCell : UITableViewCell
/** 类型图片 */
@property (weak, nonatomic) IBOutlet UIImageView *iconIV;
/** 类型名称 */
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
/** 类型描述 */
@property (weak, nonatomic) IBOutlet UILabel *descLb;
/** 集数图标 */
@property (weak, nonatomic) IBOutlet UIImageView *numberIV;

/** 集数 */
@property (weak, nonatomic) IBOutlet UILabel *numberLb;





@end
















