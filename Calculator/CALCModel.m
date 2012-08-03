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
    double result;
    
    NSLog(@"look");
        
    if ([self.operation isEqualToString:@"+"]) {
        NSLog(@"Waiting operand is %f and new operand is %f", self.waitingOperand, newOperand);
        result = (self.waitingOperand + newOperand);
    }
    else if ([self.operation isEqualToString:@"-"]) {
        result = (self.waitingOperand - newOperand);
        NSLog(@"Subtract!!!");
    }
    else if ([self.operation isEqualToString:@"*"]) {
        result = (self.waitingOperand * newOperand);
        NSLog(@"Multiply!!!");
    }
    else if ([self.operation isEqualToString:@"/"]) {
        result = (self.waitingOperand / newOperand);
        NSLog(@"Divide!!!");
    }
    else if ([self.operation isEqualToString:@"="]) {
        result = (self.waitingOperand * newOperand);
        NSLog(@"Equals!!!");
    }
    return result;
}

@end
