//
//  IMSButtonItem.m
//  IMS
//
//  Created by Jannik Lorenz on 02.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockButton.h"

@implementation BlockButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(push:)forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}



- (void)push:(id)sender {
    if (_selectionBlock) _selectionBlock(sender);
}




@end
