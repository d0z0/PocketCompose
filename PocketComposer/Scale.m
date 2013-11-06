//
//  Scale.m
//  PocketComposer
//
//  Created by Schubert Cardozo on 06/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import "Scale.h"
#import "NSArray+Extensions.h"

@implementation Scale

- (id)initWithRoot:(NSString *)r type:(NSString *)t
{
	self = [super init];
	if(!self)
		return nil;
	root = r;
	type = t;
	return self;
}

- (NSString *)description
{
	NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ %@ Scale", root, type];
	return descriptionString;
}

- (NSMutableArray *)notes
{
	NSMutableArray *notes = [[NSMutableArray alloc] init];
	int rootIndex = [[Constants noteNames] indexOfObject:root];
	NSMutableArray *rotatedNoteNames = [[Constants noteNames] rotateArrayBy:rootIndex];
	for(NSNumber *interval in [[Constants scaleIntervals] objectForKey:type])
	{
		[notes addObject:[rotatedNoteNames objectAtIndex:[interval intValue]]];
	}
	return notes;
}

@end
