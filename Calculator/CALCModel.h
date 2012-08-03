//
//  CALCModel.h
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CALCModel : NSObject

- (double)performOperationWithOperand:(double)newOperand;

@property (nonatomic) double waitingOperand;
@property (nonatomic, strong) NSString *operation;


@end
