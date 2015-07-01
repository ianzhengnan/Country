//
//  CountryInfo.m
//  Country
//
//  Created by 郑楠 on 15/7/1.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import "CountryInfo.h"

@implementation CountryInfo

- (instancetype)initWithDict: (NSDictionary *)dict{
    
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict]; //通常实际项目中不用kvc的方式，通常都是读取的json xml的方式ß
    }
    return self;
}

+ (instancetype)countryWithDict: (NSDictionary *)dict{
    
    return [[self alloc] initWithDict:dict];
}

@end
