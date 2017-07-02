//
//  ViewController.m
//  Uiview_and_Animation
//
//  Created by Anand Lilhare on 02/07/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _scaleFactor = 2;
    _angle = 180;
    CGRect frameRect = CGRectMake(10, 10, 45, 45);
    _boxView = [[UIView alloc] initWithFrame:frameRect];
    _boxView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_boxView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    [UIView animateWithDuration:2.0
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         CGAffineTransform scaleTrans =
                         CGAffineTransformMakeScale(_scaleFactor, _scaleFactor);
                         
                         CGAffineTransform rotateTrans =
                         CGAffineTransformMakeRotation(_angle * M_PI / 180);
                         
                         _boxView.transform = CGAffineTransformConcat(scaleTrans,
                                                                      rotateTrans);
                         _angle = (_angle == 180 ? 360 : 180);
                         _scaleFactor = (_scaleFactor == 2 ? 1 : 2);
                         _boxView.center = location;
                     } completion:nil];
}

@end
