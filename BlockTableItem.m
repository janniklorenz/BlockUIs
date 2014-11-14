//
//  TableItem.m
//  MyPlan 5
//
//  Created by Jannik Lorenz on 31.07.14.
//  Copyright (c) 2014 Jannik Lorenz. All rights reserved.
//

#import "BlockTableItem.h"

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
//        self.backgroundColor = ;
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
    
    cell.textLabel.text = _title;
    cell.detailTextLabel.text = _detailTitle;
    
    cell.imageView.image = _image;
    
    cell.accessoryType = _accessoryType;
    
    return cell;
}


- (void)reloadTableView {
    _reloadBlock();
}




@end
