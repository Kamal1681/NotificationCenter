//
//  FirstViewController.m
//  NSNotificationCenter
//
//  Created by Kamal Maged on 2019-07-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepperValue;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   [self editStepperValue:self.stepperValue];
}

- (IBAction)editStepperValue:(UIStepper *)sender {
    NSDictionary * dict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithDouble:self.stepperValue.value], @"Stepper Value", nil];
    NSNotificationCenter * notificationCenter = [NSNotificationCenter defaultCenter];
    NSNotification * notification = [[NSNotification alloc]initWithName:@"Stepper Changed" object:sender userInfo: dict];
    [notificationCenter postNotification:notification];
}


@end
