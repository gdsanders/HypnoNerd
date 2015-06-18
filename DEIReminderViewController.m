//
//  DEIReminderViewController.m
//  HypnoNerd
//
//  Created by G.D. Sanders on 6/17/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import "DEIReminderViewController.h"

@interface DEIReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker * datePicker;

@end

@implementation DEIReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
