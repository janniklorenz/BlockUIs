//
//  IMSButtonItem.h
//  IMS
//
//  Created by Jannik Lorenz on 02.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import <UIKit/UIKit.h>

// BlockUIBlocks
#import "BlockUIBlocks.h"

@interface BlockButton : UIButton

@property (copy) BlockUIActionBlock selectionBlock;

@end
