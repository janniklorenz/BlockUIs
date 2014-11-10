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

@interface BlockAlertView : UIAlertView <UIAlertViewDelegate>

@property (copy) BlockUIClickBlock clickBlock;

@end
