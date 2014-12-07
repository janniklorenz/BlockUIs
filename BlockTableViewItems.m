//
//  BlockTableViewItems.m
//  app2drive
//
//  Created by Jannik Lorenz on 16.11.14.
//  Copyright (c) 2014 Intera. All rights reserved.
//

#import "BlockTableViewItems.h"

#import "BlockTableItem.h"

@implementation BlockTableViewItems



#pragma mark - Init

- (id)init {
    self = [super init];
    if (self) {
        _tableItems = [NSMutableArray new];
        _sectionHeader = [NSMutableArray new];
    }
    return self;
}


#pragma mark - Getter

- (BlockTableItem *)itemForIndexPath:(NSIndexPath *)indexPath {
    if (self.tableItems.count > indexPath.section) {
        if ([[self.tableItems objectAtIndex:indexPath.section] count] > indexPath.row) {
            return [[self.tableItems objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        }
    }
    return nil;
}

- (NSString *)titleForSection:(NSInteger)section {
    if (self.sectionHeader.count > section) {
        return [self.sectionHeader objectAtIndex:section];
    }
    return @"";
}

- (NSInteger)sectionCountForSection:(NSInteger)section {
    if ([self.tableItems count] > section) {
        return [[self.tableItems objectAtIndex:section] count];
    }
    return 0;
}
- (NSInteger)mainCount {
    return self.tableItems.count;
}






#pragma mark - Setter

- (void)setItem:(BlockTableItem *)item forIndexPath:(NSIndexPath *)indexPath {
    while (indexPath.section >= self.tableItems.count) {
        [_tableItems addObject:[NSMutableArray new]];
    }
    
    if ([[self.tableItems objectAtIndex:indexPath.section] count] > indexPath.row) {
        [[self.tableItems objectAtIndex:indexPath.section] insertObject:item atIndex:indexPath.row];
    }
    else {
        [[self.tableItems objectAtIndex:indexPath.section] addObject:item];
    }
}

- (void)addItem:(BlockTableItem *)item toSection:(NSInteger)section {
    while (section >= self.tableItems.count) {
        [_tableItems addObject:[NSMutableArray new]];
    }
    
    [[self.tableItems objectAtIndex:section] addObject:item];
}

- (void)setSectionTitle:(NSString *)title forSection:(NSInteger)section {
    while (section >= self.sectionHeader.count) {
        [_sectionHeader addObject:@""];
    }
    
    
    if ([self.sectionHeader count] > section) {
        [self.sectionHeader insertObject:title atIndex:section];
    }
    else {
        [self.sectionHeader addObject:title];
    }
}


@end
