//
//  Constants.m
//  PocketComposer
//
//  Created by Schubert Cardozo on 06/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import "Constants.h"

@implementation Constants

+ (NSArray *)noteNames
{
    static NSArray *names;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        names = @[@"C", @"C#", @"D", @"Eb", @"E",
				 @"F", @"F#", @"G", @"G#", @"A",  @"Bb", @"B"];
    });
    return names;
}

+ (NSDictionary *)scaleIntervals
{
    static NSDictionary *intervals;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        intervals = @{@"major":@[@0,@2,@4,@5,@7,@9,@11],
                      @"minor":@[@0,@2,@3,@5,@7,@8,@10],
                      @"harmonic minor":@[@0,@2,@3,@5,@7,@9,@11],
                      @"melodic minor":@[@0,@2,@3,@5,@7,@9,@11]};
    });
    return intervals;
}

+ (NSDictionary *)modeIndex
{
    static NSDictionary *mapping;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mapping = @{@"ionian" : @0,
                    @"dorian" : @2,
                    @"phrygian" : @4,
                    @"lydian" : @5,
                    @"mixolydian" : @7,
                    @"aeolian" : @9,
                    @"locrian" : @11
                    };
    });
    return mapping;
}





@end
