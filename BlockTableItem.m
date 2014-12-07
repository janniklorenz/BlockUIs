//
//  TableItem.m
//  MyPlan 5
//
//  Created by Jannik Lorenz on 31.07.14.
//  Copyright (c) 2014 Jannik Lorenz. All rights reserved.
//

#import "BlockTableItem.h"

#import "BlockSwitch.h"
#import "BlockTextField.h"

#import "HelperTableViewCell.h"

@implementation BlockTableItem

#pragma mark - Inits

- (id)init {
    self = [super init];
    if (self) {
        self.title = @"";
        self.detailTitle = @"";
        self.deleteable = NO;
        self.moveable = NO;
        self.image = nil;
        self.height = 44;
    }
    return self;
}

- (id)initWithTitle:(NSString *)title {
    self = [self init];
    if (self) {
        self.title = title;
    }
    return self;
}


// TODO: Setter Methods with changed flag


#pragma mark - Methods

- (UITableViewCell *)getTableViewCellWithIdentifier:(NSString *)identifier {
    if (!_cell) _cell = [[HelperTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    switch (self.style) {
        default:{
            _cell.textLabel.text = _title;
            _cell.detailTextLabel.text = _detailTitle;
            _cell.imageView.image = _image;
            
            break;
        }
            
        case BlockTableItemStyleSwitch:{
            _cell.textLabel.text = _title;
            
            self.styleSwitch = [BlockSwitch new];
            
            CGSize size = _cell.contentView.frame.size;
            self.styleSwitch.frame = CGRectMake(size.width-self.styleSwitch.frame.size.width-(size.height-self.styleSwitch.frame.size.height)*0.5, (size.height-self.styleSwitch.frame.size.height)*0.5, self.styleSwitch.frame.size.width, self.styleSwitch.frame.size.height);
            self.styleSwitch.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            [_cell.contentView addSubview:self.styleSwitch];
            
            break;
        }
            
        case BlockTableItemStyleButton:{
            
            self.styleButtonLabel = [[UILabel alloc] initWithFrame:_cell.contentView.frame];
            self.styleButtonLabel.text = _title;
            self.styleButtonLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            self.styleButtonLabel.textAlignment = NSTextAlignmentCenter;
            
            [_cell.contentView addSubview:self.styleButtonLabel];
            
            break;
        }
            
        case BlockTableItemStyleEditing:{
            _cell.textLabel.text = _title;
            
            CGSize size = _cell.contentView.frame.size;
            self.styleEditingTextField = [[BlockTextField alloc] initWithFrame:CGRectMake(size.width*0.5, size.height*0.1, size.width*0.5-size.height*0.2, size.height*0.8)];
            self.styleEditingTextField.text = _detailTitle;
            self.styleEditingTextField.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            
            [_cell.contentView addSubview:self.styleEditingTextField];
            
            break;
        }
        case BlockTableItemStylePassword:{
            _cell.textLabel.text = _title;
            
            CGSize size = _cell.contentView.frame.size;
            self.styleEditingTextField = [[BlockTextField alloc] initWithFrame:CGRectMake(size.width*0.5, size.height*0.1, size.width*0.5-size.height*0.2, size.height*0.8)];
            self.styleEditingTextField.secureTextEntry = YES;
            self.styleEditingTextField.text = _detailTitle;
            self.styleEditingTextField.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            
            [_cell.contentView addSubview:self.styleEditingTextField];
            
            break;
        }
    }
    
    switch (self.backgroundStyle) {
        case BlockTableItemBackgroundStyleClear:{
            _cell.backgroundColor = [UIColor clearColor];
            UIView *v = [[UIView alloc] initWithFrame:_cell.contentView.frame];
            v.backgroundColor = [UIColor clearColor];
            _cell.backgroundView = v;
            
            break;
        }
        default:{
            break;
        }
    }
    
    
    
    if (self.drawBlock) self.drawBlock(self);
    
    _cell.accessoryType = _accessoryType;
    
    return _cell;
}


- (void)reloadTableView {
    if(_reloadBlock) _reloadBlock(self);
}




@end
