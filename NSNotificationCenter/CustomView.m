//
//  CustomView.m
//  NSNotificationCenter
//
//  Created by Kamal Maged on 2019-07-15.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)whiteViewPanned:(UIPanGestureRecognizer *)sender {
    self.point = [sender translationInView:self];
    [sender setTranslation:CGPointZero inView:self];
}



@end
