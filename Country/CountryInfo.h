//
//  CountryInfo.h
//  Country
//
//  Created by 郑楠 on 15/7/1.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountryInfo : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *icon;

- (instancetype)initWithDict: (NSDictionary *)dict;

+ (instancetype)countryWithDict: (NSDictionary *)dict;


@end
