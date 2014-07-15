//
//  MainViewController.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "MainViewController.h"
#import "PaymentViewController.h"
#import "AssetViewController.h"
#import "SettingsViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIButton *paymentButton;
@property (weak, nonatomic) IBOutlet UIButton *assetsButton;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIView *contentView;
- (IBAction)onPaymentsButtonTap:(id)sender;
- (IBAction)onAssetsButtonTap:(id)sender;
- (IBAction)onSettingsButtonTap:(id)sender;

- (void)resetButtonStates;

@property (nonatomic, strong) PaymentViewController *paymentViewController;
@property (nonatomic, strong) AssetViewController *assetViewController;
@property (nonatomic, strong) SettingsViewController *settingsViewController;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.paymentViewController = [[PaymentViewController alloc] init];
        self.assetViewController = [[AssetViewController alloc] init];
        self.settingsViewController = [[SettingsViewController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self onPaymentsButtonTap:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPaymentsButtonTap:(id)sender {
    [self.contentView addSubview:self.paymentViewController.view];
    [self resetButtonStates];
    self.paymentButton.selected = YES;
}

- (IBAction)onAssetsButtonTap:(id)sender {
    [self.contentView addSubview:self.assetViewController.view];
    [self resetButtonStates];
    self.assetsButton.selected = YES;
}

- (IBAction)onSettingsButtonTap:(id)sender {
    [self.contentView addSubview:self.settingsViewController.view];
    [self resetButtonStates];
    self.settingsButton.selected = YES;
}

// Reset button states
- (void)resetButtonStates {
    [self.paymentButton setSelected:NO];
    [self.assetsButton setSelected:NO];
    [self.settingsButton setSelected:NO];
}

@end
