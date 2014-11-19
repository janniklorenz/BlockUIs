//
//  BlockPickerView.h
//  app2drive
//
//  Created by Jannik Lorenz on 18.11.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BlockUIBlocks.h"

@interface BlockPickerView : UIPickerView <UIPickerViewDelegate, UIPickerViewDataSource>

/** All Title Strings */
@property (readwrite, nonatomic) NSArray *titles;

@property (copy) BlockUIClickBlock clickBlock;

@end
