//
//  NSArray+Extensions.m
//  PocketComposer
//
//  Created by Schubert Cardozo on 06/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import "NSArray+Extensions.h"

@implementation NSArray (Extensions)

- (NSMutableArray *)rotateArrayBy:(int)anAmount
{
	NSMutableArray *rotatedArray = [NSMutableArray arrayWithArray:self];
	
	for (NSUInteger i = [rotatedArray count] - anAmount; i > 0; i--)
	{
		NSObject *obj = [rotatedArray lastObject];
		[rotatedArray insertObject:obj atIndex:0];
		[rotatedArray removeLastObject];
	}
	return rotatedArray;
}




@end
