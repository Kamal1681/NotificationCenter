//
//  FourthViewController.m
//  NSNotificationCenter
//
//  Created by Kamal Maged on 2019-07-15.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "FourthViewController.h"
#import "CustomView.h"
@interface FourthViewController ()
@property (weak, nonatomic) IBOutlet CustomView *whiteView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.whiteView addObserver:self forKeyPath:@"point" options:NSKeyValueObservingOptionNew context:nil];
    
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"point"]) {
        
        id value = [change valueForKey:NSKeyValueChangeNewKey];
 
        CGPoint point = [(NSValue *)value CGPointValue];

        CGFloat yellowX = self.yellowView.center.x;
        CGFloat yellowY = self.yellowView.center.y;
        
        yellowX += point.x;
        yellowY += point.y;
        
        CGPoint newCenter = CGPointMake(yellowX, yellowY);
        self.yellowView.center = newCenter;
    }
}
- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"point"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
