//
//  ViewController.m
//  BlockDemoExample
//
//  Created by CUE on 7/24/17.
//  Copyright © 2017 CUE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//-(void)testBlockStorageType;
-(void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void (^)(int result))completionHandler;
@end

@implementation ViewController

- (void)viewDidLoad {
 //  [self testBlockStorageType];
    [self addNumber:5 withNumber:7 andCompletionHandler:^(int result) {
        // We just log the result, no need to do anything else.
        NSLog(@"The result is %d", result);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(void)testBlockStorageType{
//    
//    __block int someValue = 10;
//    
//    int (^myOperation)(void) = ^(void){
//        someValue += 5;
//        
//        return someValue + 10;
//    };
//    
//    NSLog(@"%d", myOperation());
//}

-(void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void (^)(int result))completionHandler{
    int result = number1 + number2;
    completionHandler(result);
}

@end
