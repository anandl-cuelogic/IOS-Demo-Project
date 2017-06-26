//
//  NSString+RemoveNums.m
//  Category_demo
//
//  Created by CUE on 6/26/17.
//  Copyright © 2017 CUE. All rights reserved.
//

#import "NSString+RemoveNums.h"

@implementation NSString (RemoveNums)
- (NSString *)removeNumbersFromString:(NSString *)string
{
    NSString *trimmedString = nil;
    NSCharacterSet *numbersSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    trimmedString = [string stringByTrimmingCharactersInSet:numbersSet];
    return trimmedString;
}
@end
