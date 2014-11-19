//
//  IMSAlertView.m
//  IMS
//
//  Created by Jannik Lorenz on 04.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockAlertView.h"

@implementation BlockAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];

    va_list args;
    va_start(args, otherButtonTitles);
    for (NSString *anOtherButtonTitle = otherButtonTitles; anOtherButtonTitle != nil; anOtherButtonTitle = va_arg(args, NSString*)) {
        [self addButtonWithTitle:anOtherButtonTitle];
    }
    
    return self;
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (_clickBlock) _clickBlock((int)buttonIndex, self);
}


@end
