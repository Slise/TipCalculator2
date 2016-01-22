//
//  ViewController.m
//  TipCalculator2
//
//  Created by Benson Huynh on 2016-01-22.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tipPercentage;
@property (weak, nonatomic) IBOutlet UITextField *billAmount;

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

- (IBAction)calculateTip:(UISlider *)sender {
    float billedAmount =  [self.billAmount.text floatValue];
    float tipAmount = 0.15 * billedAmount;
    NSString *displayedTip = [NSString stringWithFormat:@"$%0.2f", tipAmount];
    [self.tipPercentage setText:displayedTip];
}

@end
