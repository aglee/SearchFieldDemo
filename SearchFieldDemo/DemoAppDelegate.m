//
//  DemoAppDelegate.m
//  SearchFieldDemo
//
//  Created by Andy Lee on 6/21/13.
//  Copyright (c) 2013 Andy Lee. All rights reserved.
//

#import "DemoAppDelegate.h"

#import "DemoBook.h"
#import "DemoWindowController.h"

@implementation DemoAppDelegate
{
	// We're a single-window app.  This is the window controller for that window.
	DemoWindowController *_windowController;
}

#pragma mark - NSApplicationDelegate methods

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Set our _windowController ivar.
	_windowController = [[DemoWindowController alloc] initWithWindowNibName:@"DemoWindowController"];
	[[_windowController window] makeKeyAndOrderFront:nil];

	// Populate the list in the window.
	NSArray *allBookInfo = @[
							 @[ @"Moby Dick", @"Herman Melville" ],
							 @[ @"Hop on Pop", @"Theodor Geisel" ],
							 @[ @"I, Robot", @"Isaac Asimov" ],
							 ];
	NSMutableArray *allBooks = [NSMutableArray array];

	for (NSArray *bookInfo in allBookInfo)
	{
		NSString *title = bookInfo[0];
		NSString *author = bookInfo[1];
		DemoBook *book = [[DemoBook alloc] init];

		[book setTitle:title];
		[book setAuthor:author];

		[allBooks addObject:book];
	}

	[[_windowController booksArrayController] setContent:allBooks];
}

@end
