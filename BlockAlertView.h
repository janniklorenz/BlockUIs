//
//  IMSAlertView.h
//  IMS
//
//  Created by Jannik Lorenz on 04.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import <UIKit/UIKit.h>

// BlockUIBlocks
#import "BlockUIBlocks.h"

//#import "DQAlertView.h"

@interface BlockAlertView : UIAlertView <UIAlertViewDelegate>

@property (copy) BlockUIClickBlock clickBlock;

//@property (readonly) DQAlertView *alert;
//
//- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...;
//
//- (void)show;

@end
