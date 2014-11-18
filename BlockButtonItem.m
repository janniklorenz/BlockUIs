//
//  IMSButtonItem.m
//  IMS
//
//  Created by Jannik Lorenz on 02.10.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockButtonItem.h"

@implementation BlockButtonItem

- (id)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action {
    self = [super initWithBarButtonSystemItem:systemItem target:self action:@selector(push:)];
    return self;
}
- (id)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    self = [super initWithTitle:title style:style target:self action:@selector(push:)];
    return self;
}
- (id)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    self = [super initWithImage:image style:style target:self action:@selector(push:)];
    return self;
}



- (void)push:(id)sender {
    if (_selectionBlock) _selectionBlock(sender);
}




@end
