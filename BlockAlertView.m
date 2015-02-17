//
//  IMSAlertView.m
//  IMS
//
//  Created by Jannik Lorenz on 04.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockAlertView.h"

#import "DQAlertView.h"

#define A2D_COLOR_GREEN [UIColor colorWithRed:124.0/255.0 green:172.0/255.0 blue:65.0/255.0 alpha:1.0]

@implementation BlockAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];

    va_list args;
    va_start(args, otherButtonTitles);
    for (NSString *anOtherButtonTitle = otherButtonTitles; anOtherButtonTitle != nil; anOtherButtonTitle = va_arg(args, NSString*)) {
        [self addButtonWithTitle:anOtherButtonTitle];
    }
    
    return self;
    
//    _alert = [[DQAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles];
//    [_alert.otherButton setTitleColor:A2D_COLOR_GREEN forState:UIControlStateNormal];
//    [_alert.cancelButton setTitleColor:A2D_COLOR_GREEN forState:UIControlStateNormal];
//    __weak typeof(self) weakSelf = self;
//    _alert.cancelButtonAction = ^(){
//        if (weakSelf.clickBlock) weakSelf.clickBlock((int)0, weakSelf);
//    };
//    _alert.otherButtonAction = ^(){
//        if (weakSelf.clickBlock) weakSelf.clickBlock((int)1, weakSelf);
//    };
    
    return self;
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (_clickBlock) _clickBlock((int)buttonIndex, self);
}

//- (void)show {
//    [_alert show];
//}

@end
