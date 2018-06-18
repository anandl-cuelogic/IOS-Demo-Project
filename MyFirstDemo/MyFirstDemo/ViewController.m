//
//  ViewController.m
//  MyFirstDemo
//
//  Created by CUE on 6/18/18.
//  Copyright © 2018 CUE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button:(id)sender {
    
    self.label.text = @"Hello";
}
@end
