//
//  CALCViewController.h
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CALCViewController : UIViewController

- (IBAction)numberButtonPushed:(UIButton *)sender;
- (IBAction)operatorButtonPushed:(UIButton *)sender;
- (IBAction)clearButtonPushed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *mainDisplayLabel;
@property (weak, nonatomic) IBOutlet UILabel *operationsLabel;

@end
