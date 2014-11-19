//
//  BlockDatePicker.m
//  app2drive
//
//  Created by Jannik Lorenz on 19.11.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockDatePicker.h"

@implementation BlockDatePicker

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(dateIsChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}


- (void)dateIsChanged:(id)sender {
    if (self.changeBlock) {
        self.changeBlock(self);
    }
}

@end
