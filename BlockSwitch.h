//
//  BlockSwitch.h
//  Pods
//
//  Created by Jannik Lorenz on 16.11.14.
//
//

#import <UIKit/UIKit.h>

#import "BlockUIBlocks.h"

@interface BlockSwitch : UISwitch

@property (copy) BlockUIActionBlock changeBlock;

@end
