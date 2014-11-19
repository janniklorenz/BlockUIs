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
        [self addTarget:self action:@selector(setEnd:) forControlEvents:UIControlEventEditingDidEndOnExit];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventEditingChanged];
        [self addTarget:self action:@selector(setEnd:) forControlEvents:UIControlEventEditingDidEndOnExit];
    }
    return self;
}


- (void)setState:(id)sender {
    if (self.changeBlock) self.changeBlock(self);
}

- (void)setEnd:(id)sender {
    if (self.endBlock) self.endBlock(self);
}

@end
