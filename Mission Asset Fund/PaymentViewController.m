//
//  PaymentViewController.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "PaymentViewController.h"
#import "HeroCell.h"
#import "SecondaryCell.h"
#import "SummaryCell.h"
#import <HexColors/HexColor.h>

@interface PaymentViewController ()

@end

@implementation PaymentViewController

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
    
    // Set delegates
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Set nib names
    [self.tableView registerNib:[UINib nibWithNibName:@"HeroCell" bundle:nil] forCellReuseIdentifier:@"HeroCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"SummaryCell" bundle:nil] forCellReuseIdentifier:@"SummaryCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"SecondaryCell" bundle:nil] forCellReuseIdentifier:@"SecondaryCell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        UIColor *startColor = [UIColor colorWithHexString:@"B2FDCF" alpha:1.0];
        UIColor *endColor = [UIColor colorWithHexString:@"01E9C1" alpha:1.0];
        HeroCell *heroCell = [tableView dequeueReusableCellWithIdentifier:@"HeroCell"];
        [heroCell initWithGradient:startColor.CGColor endColor:endColor.CGColor];
        return heroCell;
    } else if (indexPath.row == 1 || indexPath.row == 2) {
        SecondaryCell *secondaryCell = [tableView dequeueReusableCellWithIdentifier:@"SecondaryCell"];
        return secondaryCell;
    } else {
        SummaryCell *summaryCell = [tableView dequeueReusableCellWithIdentifier:@"SummaryCell"];
        return summaryCell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 250.0;
    } else if (indexPath.row == 1 || indexPath.row == 2) {
        return 80;
    } else {
        return 80;
    }
}

@end
