//
//  BlockTextField.m
//  Pods
//
//  Created by Jannik Lorenz on 16.11.14.
//
//

#import "BlockTextField.h"

@implementation BlockTextField

- (id)init {
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (void)setSender:(id)sender {
    if (self.changeBlock) self.changeBlock();
}

@end
