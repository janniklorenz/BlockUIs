//
//  TableItem.m
//  MyPlan 5
//
//  Created by Jannik Lorenz on 31.07.14.
//  Copyright (c) 2014 Jannik Lorenz. All rights reserved.
//

#import "BlockTableItem.h"

#import "BlockSwitch.h"

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
    if (!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    
    switch (self.style) {
        case BlockTableItemStyleDefault:{
            cell.textLabel.text = _title;
            cell.detailTextLabel.text = _detailTitle;
            cell.imageView.image = _image;
            
            break;
        }
            
        case BlockTableItemStyleSwitch:{
            cell.textLabel.text = _title;
            
            self.styleSwitch = [BlockSwitch new];
            
            CGSize size = cell.contentView.frame.size;
            self.styleSwitch.frame = CGRectMake(size.width-self.styleSwitch.frame.size.width-(size.height-self.styleSwitch.frame.size.height)*0.5, (size.height-self.styleSwitch.frame.size.height)*0.5, self.styleSwitch.frame.size.width, self.styleSwitch.frame.size.height);
            self.styleSwitch.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            [cell.contentView addSubview:self.styleSwitch];
            
            break;
        }
            
        case BlockTableItemStyleButton:{
            
            self.styleButtonLabel = [[UILabel alloc] initWithFrame:cell.contentView.frame];
            self.styleButtonLabel.text = _title;
            self.styleButtonLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            self.styleButtonLabel.textAlignment = NSTextAlignmentCenter;
            
            [cell.contentView addSubview:self.styleButtonLabel];
            
            break;
        }
            
        case BlockTableItemStyleEditing:{
            
            
            
            break;
        }
    }
    
    switch (self.backgroundStyle) {
        case BlockTableItemBackgroundStyleClear:{
            cell.backgroundColor = [UIColor clearColor];
            UIView *v = [[UIView alloc] initWithFrame:cell.contentView.frame];
            v.backgroundColor = [UIColor clearColor];
            cell.backgroundView = v;
            
            break;
        }
        default:{
            break;
        }
    }
    
    
    if (self.drawBlock) self.drawBlock(self);
    
    
    cell.accessoryType = _accessoryType;
    
    return cell;
}


- (void)reloadTableView {
    _reloadBlock();
}




@end
