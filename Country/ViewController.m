//
//  ViewController.m
//  Country
//
//  Created by 郑楠 on 15/7/1.
//  Copyright (c) 2015年 zhengnan. All rights reserved.
//

#import "ViewController.h"
#import "CountryInfo.h"
#import "CountryFlagView.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation ViewController

//lazy load
- (NSArray *)dataArray{

    if (!_dataArray) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"flags.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *muArr = [NSMutableArray arrayWithCapacity:array.count];
        
        for (NSDictionary *dict in array) {
            CountryInfo *countryModel = [CountryInfo countryWithDict:dict];
            [muArr addObject:countryModel];
        }
        _dataArray = [muArr copy];
    }
    return _dataArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UIPickViewDataSource
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.dataArray.count;
}

#pragma mark - UIPickViewDelegate
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    CountryFlagView *countryView = (CountryFlagView *)view;
    if (!countryView) {
        countryView = [CountryFlagView countryView];
    }
    
    countryView.countryModel = self.dataArray[row];
    
    return countryView;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    
    return [CountryFlagView rowHeight];
}

@end
