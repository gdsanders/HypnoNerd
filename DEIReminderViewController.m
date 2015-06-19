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
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        // Create a UIImage from a file
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        // Put that image in the tab bar item
        self.tabBarItem.image = image;
        
    }
    return self;
}




@end
