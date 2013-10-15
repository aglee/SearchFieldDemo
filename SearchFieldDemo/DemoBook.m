//
//  DemoBook.m
//  SearchFieldDemo
//
//  Created by Andy Lee on 6/21/13.
//  Copyright (c) 2013 Andy Lee. All rights reserved.
//

#import "DemoBook.h"

@implementation DemoBook

#pragma mark - NSObject methods

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@: %p -- [%@] by [%@]>",
			[self class], self, _title, _author];
}

@end
