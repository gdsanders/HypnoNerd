//
//  DEIHypnosisViewController.m
//  HypnoNerd
//
//  Created by G.D. Sanders on 6/17/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import "DEIHypnosisViewController.h"
#import "DEIHypnosisView.h"

@implementation DEIHypnosisViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    DEIHypnosisView *backgroundView = [[DEIHypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    self.view = backgroundView;
}

@end
