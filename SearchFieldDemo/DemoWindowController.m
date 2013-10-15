//
//  DemoWindowController.m
//  SearchFieldDemo
//
//  Created by Andy Lee on 6/21/13.
//  Copyright (c) 2013 Andy Lee. All rights reserved.
//

#import "DemoWindowController.h"

#import "DemoBook.h"

@implementation DemoWindowController

#pragma mark - NSControl delegate methods

- (void)controlTextDidChange:(NSNotification *)aNotification
{
	if ([aNotification object] == _searchField)
	{
		[self _updateListFilter];
	}
}

#pragma mark - Private methods

- (void)_updateListFilter
{
	NSString *searchString = [_searchField stringValue];
	NSPredicate *searchStringPredicate = [self _predicateForFindingSearchString:searchString];

	[_booksArrayController setFilterPredicate:searchStringPredicate];
}

- (NSPredicate *)_predicateForFindingSearchString:(NSString *)searchString
{
	if ([searchString length] == 0)
	{
		return nil;
	}

	return [NSPredicate predicateWithFormat:(@"title CONTAINS[cd] %@"
											 @" OR author CONTAINS[cd] %@")
							  argumentArray:(@[ searchString, searchString ])];

}

@end
