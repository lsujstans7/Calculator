//
//  CALCViewController.m
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CALCViewController.h"

@interface CALCViewController ()

@end

@implementation CALCViewController
@synthesize mainDisplayLabel;
@synthesize operationsLabel;
@synthesize typingNumber = _typingNumber;
@synthesize model = _model;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.typingNumber = NO;
}

- (void)viewDidUnload
{
    [self setMainDisplayLabel:nil];
    [self setOperationsLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)numberButtonPushed:(UIButton *)sender {
    NSString *newDisplay;
    if ([mainDisplayLabel.text isEqualToString:@"0"]) {
        mainDisplayLabel.text = sender.titleLabel.text;
        newDisplay = sender.titleLabel.text;
    }
    else {
        newDisplay = [self.mainDisplayLabel.text stringByAppendingFormat:@"%@", sender.titleLabel.text];
        mainDisplayLabel.text = newDisplay;
        self.typingNumber = YES;
    }
}

- (IBAction)operatorButtonPushed:(UIButton *)sender {
    NSString *operator = sender.titleLabel.text;
    if (self.typingNumber) {
        
        double currentNumber = [self.mainDisplayLabel.text doubleValue];

        if ([operator isEqualToString:@"="]) {
            double result = [self.model performOperationWithOperand:(currentNumber)];
            NSLog(@"Result %f", result);
        }
        else {
                
            self.model.waitingOperand = currentNumber;
            self.model.operation = operator;
        
        }
        mainDisplayLabel.text = @"0";
        self.typingNumber = NO;
    }
//    if ([operator isEqualToString:@"+"]) {
//        NSLog(@"Add!!!");
//        operationsLabel.text = operator;
//    }
//    else if ([operator isEqualToString:@"-"]) {
//        NSLog(@"Subtract!!!");
//        operationsLabel.text = operator;
//    }
//    else if ([operator isEqualToString:@"*"]) {
//        NSLog(@"Multiply!!!");
//        operationsLabel.text = operator;
//    }
//    else if ([operator isEqualToString:@"/"]) {
//        NSLog(@"Divide!!!");
//        operationsLabel.text = operator;
//    }
//    else if ([operator isEqualToString:@"="]) {
//        NSLog(@"Equals!!!");
//        operationsLabel.text = operator;
//    }
}

- (IBAction)clearButtonPushed:(UIButton *)sender {
    mainDisplayLabel.text = @"0";
}
@end
