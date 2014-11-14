//
//  TableItem.h
//  MyPlan 5
//
//  Created by Jannik Lorenz on 31.07.14.
//  Copyright (c) 2014 Jannik Lorenz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "BlockUIBlocks.h"

@interface BlockTableItem : NSObject {
    
    // Cache
    UITableViewCell *cell;
    
}


#pragma mark - General Settings

/** Title */
@property (readwrite) NSString *title;

/** Description */
@property (readwrite) NSString *detailTitle;

/** Editing */
@property (readwrite) BOOL deleteable;

/** Move */
@property (readwrite) BOOL moveable;




#pragma mark - Cell Style

/**  Thumbnail Image */
@property (readwrite) UIImage *image;

/** Cell Background */
@property (readwrite) UIColor *backgroundColor;

/** Cell Height */
@property (readwrite) int height;

/** Accessory Type */
@property (readwrite) UITableViewCellAccessoryType accessoryType;



#pragma mark - Blocks

/** DidSelect Block */
@property (copy) BlockUIActionBlock selectionBlock;

/** DidDelete Block */
@property (copy) BlockUIActionBlock deleteBlock;




#pragma mark - Inits

/** New Table Item With Title */
- (id)initWithTitle:(NSString *)title;




#pragma mark - Methods

/** returns the TableView Cell */
- (UITableViewCell *)getTableViewCellWithIdentifier:(NSString *)identifier;


- (void)reloadTableView;
@property (readwrite) UITableView *table;
@property (copy) BlockUIActionBlock reloadBlock;


@end
