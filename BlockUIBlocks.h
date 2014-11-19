//
//  Header.h
//  
//
//  Created by Jannik Lorenz on 10.11.14.
//
//

@class BlockTableItem;

/** Void Return Block */
typedef void (^BlockUIActionBlock)();

/** Self Return Block */
typedef void (^BlockUISelfBlock)(id sender);

/** TableItem Draw Block */
typedef void (^BlockUIDrawBlock)(BlockTableItem *item);

/** Button Index Return Block */
typedef void (^BlockUIClickBlock)(int buttonIndex, id sender);