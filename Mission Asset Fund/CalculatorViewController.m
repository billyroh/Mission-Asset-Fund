//
//  CalculatorViewController.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/15/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
- (IBAction)onPayButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *payButton;
@property (weak, nonatomic) IBOutlet UILabel *amountTextLabel;


@end

@implementation CalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.payButton.layer.cornerRadius = (self.payButton.frame.size.width / 2);
    self.amountTextLabel.text = @"$0.00";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPayButton:(id)sender {
}
@end
