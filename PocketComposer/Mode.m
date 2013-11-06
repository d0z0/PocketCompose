//
//  Mode.m
//  PocketComposer
//
//  Created by Schubert Cardozo on 06/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import "Mode.h"
#import "NSArray+Extensions.h"

@implementation Mode

- (id)initWithRoot:(NSString *)r type:(NSString *)t
{
	self = [super init];
	if(!self)
		return nil;
	root = r;
	type = t;
    
    NSArray *modes = [[Constants modeIndex] keysSortedByValueUsingComparator:^(id obj1, id obj2) {
        if([obj1 integerValue] > [obj2 integerValue])
            return(NSComparisonResult)NSOrderedDescending;
        if([obj1 integerValue] < [obj2 integerValue])
            return (NSComparisonResult)NSOrderedAscending;
        return (NSComparisonResult)NSOrderedSame;
    } ];
    
    degree = [modes indexOfObject:type];
	return self;
}

- (NSString *)description
{
	NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ %@ (%d degree) Mode", root, type, degree];
	return descriptionString;
}

- (NSMutableArray *)notes
{
    int rootIndex = [[Constants noteNames] indexOfObject:root];
    int modeIndex = [[[Constants modeIndex] objectForKey:type] integerValue];
    int majorRootIndex = rootIndex - modeIndex;
    NSString *majorRoot = [[[Constants noteNames] rotateArrayBy:majorRootIndex] objectAtIndex:0];
    Scale *majorScale = [[Scale alloc] initWithRoot:majorRoot type:@"major"];
    NSMutableArray *notes = [[majorScale notes] rotateArrayBy:degree];
	return notes;
}



@end
