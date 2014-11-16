//
//  BlockTextField.m
//  Pods
//
//  Created by Jannik Lorenz on 16.11.14.
//
//

#import "BlockTextField.h"

@implementation BlockTextField

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}


- (void)setState:(id)sender {
    if (self.changeBlock) self.changeBlock();
}


@end
