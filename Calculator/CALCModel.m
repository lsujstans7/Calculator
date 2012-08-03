//
//  CALCModel.m
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CALCModel.h"

@implementation CALCModel
@synthesize waitingOperand = _waitingOperand;
@synthesize operation = _operation;

- (double)performOperationWithOperand:(double)newOperand
{
    double result = 0.0;
    
    NSLog(@"Operation:%@ waitingOperand:%f", self.operation, self.waitingOperand);
    
    if ([self.operation isEqualToString:@"+"]) {
        NSLog(@"Waiting operand is %f and new operand is %f", self.waitingOperand, newOperand);
        result = (self.waitingOperand + newOperand);
    }
    else if ([self.operation isEqualToString:@"-"]) {
        NSLog(@"Subtract!!!");
    }
    else if ([self.operation isEqualToString:@"*"]) {
        NSLog(@"Multiply!!!");
    }
    else if ([self.operation isEqualToString:@"/"]) {
        NSLog(@"Divide!!!");
    }
    else if ([self.operation isEqualToString:@"="]) {
        NSLog(@"Equals!!!");
    }
    return result;
}

@end
