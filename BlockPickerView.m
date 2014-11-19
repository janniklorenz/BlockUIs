//
//  BlockPickerView.m
//  app2drive
//
//  Created by Jannik Lorenz on 18.11.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockPickerView.h"

#import "BlockUIBlocks.h"

@implementation BlockPickerView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}





#pragma mark - Setter

- (void)setTitles:(NSArray *)titles {
    _titles = titles;
    [self reloadAllComponents];
}




#pragma mark - UIPickerView Delegate & DataSource

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.titles.count;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.titles objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
    if (self.clickBlock) self.clickBlock((int)row, self);
}


@end
