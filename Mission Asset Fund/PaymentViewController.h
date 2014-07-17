//
//  PaymentViewController.h
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeroCell.h"

@interface PaymentViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, HeroCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
