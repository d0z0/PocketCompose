//
//  Scale.h
//  PocketComposer
//
//  Created by Schubert Cardozo on 06/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Theory.h"

@interface Scale : NSObject {
	NSString *root;
	NSString *type;
}

- (id)initWithRoot:(NSString *)r type:(NSString *)t;
- (NSMutableArray *)notes;


@end
