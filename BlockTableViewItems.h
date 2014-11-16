//
//  BlockTableViewItems.h
//  app2drive
//
//  Created by Jannik Lorenz on 16.11.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BlockTableItem;

@interface BlockTableViewItems : NSObject

@property (readonly) NSMutableArray *tableItems;

@property (readonly) NSMutableArray *sectionHeader;


#pragma mark - Getter

- (BlockTableItem *)itemForIndexPath:(NSIndexPath *)indexPath;

- (NSString *)titleForSection:(NSInteger)section;

- (NSInteger)sectionCountForSection:(NSInteger)section;
- (NSInteger)mainCount;


#pragma mark - Setter

- (void)setItem:(BlockTableItem *)item forIndexPath:(NSIndexPath *)indexPath;

- (void)addItem:(BlockTableItem *)item toSection:(NSInteger)section;

- (void)setSectionTitle:(NSString *)title forSection:(NSInteger)section;


@end