//
//  HeroCell.h
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HeroCellDelegate;

@interface HeroCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic, strong) UIColor *startColor;
@property (nonatomic, strong) UIColor *endColor;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *heroLabel;
@property (weak, nonatomic) IBOutlet UIButton *callToActionButton;
- (IBAction)onCallToActionTap:(id)sender;
@property (nonatomic, weak) id<HeroCellDelegate> delegate;

- (void)initWithGradient:(CGColorRef)startColor endColor:(CGColorRef)endColor;

@end

@protocol HeroCellDelegate <NSObject>

- (void)presentViewController:(HeroCell *)heroCell;

@end