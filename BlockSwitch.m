//
//  BlockSwitch.m
//  Pods
//
//  Created by Jannik Lorenz on 16.11.14.
//
//

#import "BlockSwitch.h"

@implementation BlockSwitch

- (id)init {
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self addTarget:self action:@selector(setState:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (void)setState:(id)sender {
    if (self.changeBlock) self.changeBlock(self);
}


@end
