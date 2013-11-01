//
//  FlipsideViewController.h
//  PocketComposer
//
//  Created by Schubert Cardozo on 01/11/13.
//  Copyright (c) 2013 Schubert Cardozo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
