//
//  DemoWindowController.h
//  SearchFieldDemo
//
//  Created by Andy Lee on 6/21/13.
//  Copyright (c) 2013 Andy Lee. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/*!
 * We are the NSSearchField's target, with doSearch: as the action.  You can control the
 * timing of when the action message is sent by changing the sendsSearchStringImmediately
 * and sendsWholeSearchString properties, which can be set in the nib or in code.
 */
@interface DemoWindowController : NSWindowController

@property (nonatomic, strong) IBOutlet NSSearchField *searchField;
@property (nonatomic, strong) IBOutlet NSArrayController *booksArrayController;

/*! Updates the array controller's filter predicate to reflect the search string. */
- (IBAction)doSearch:(id)sender;

@end
