//
//  CountryFlagView.h
//  Country
//
//  Created by 郑楠 on 15/7/2.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CountryInfo; //为了防止循环导入，所以这里用class
@interface CountryFlagView : UIView
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *flag;

@property (nonatomic, strong) CountryInfo *countryModel;

+ (instancetype)countryView;
+ (CGFloat)rowHeight;

@end
