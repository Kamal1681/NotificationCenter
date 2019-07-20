//
//  SecondViewController.m
//  NSNotificationCenter
//
//  Created by Kamal Maged on 2019-07-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *count;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
- (void)viewWillAppear:(BOOL)animated {
    NSNotificationCenter * notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(updateLabel:) name:@"Stepper Changed" object:nil];
}
- (void) updateLabel: (NSNotification *) notification {
    self.count.text = [[[notification userInfo]valueForKey:@"Stepper Value"]stringValue];
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
