//
//  CountryFlagView.m
//  Country
//
//  Created by 郑楠 on 15/7/2.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import "CountryFlagView.h"
#import "CountryInfo.h"

@implementation CountryFlagView

+ (instancetype)countryView{

    return [[[NSBundle mainBundle] loadNibNamed:@"CountryFlagView" owner:self options:nil] lastObject];
}

//assign data
- (void)setCountryModel:(CountryInfo *)countryModel{

    if (_countryModel != countryModel) {
        _countryModel = countryModel;
        self.name.text = _countryModel.name;
        self.flag.image = [UIImage imageNamed:_countryModel.icon];
        
    }
}

+ (CGFloat)rowHeight{
    return 54;
}

@end
