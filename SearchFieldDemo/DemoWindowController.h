//
//  DemoWindowController.h
//  SearchFieldDemo
//
//  Created by Andy Lee on 6/21/13.
//  Copyright (c) 2013 Andy Lee. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/*!
 * In the nib file, we are the NSSearchField's delegate.  That enables us to update the
 * array controller's filter predicate whenever the search string changes.
 */
@interface DemoWindowController : NSWindowController

@property (nonatomic, strong) IBOutlet NSSearchField *searchField;
@property (nonatomic, strong) IBOutlet NSArrayController *booksArrayController;

@end
