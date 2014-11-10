//
//  IMSAlertView.h
//  IMS
//
//  Created by Jannik Lorenz on 04.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ClickBlock)(int buttonIndex);

@interface BlockAlertView : UIAlertView <UIAlertViewDelegate>

@property (copy) ClickBlock clickBlock;

@end
