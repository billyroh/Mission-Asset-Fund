//
//  HeroCell.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "HeroCell.h"

@implementation HeroCell

@synthesize contentView;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)initWithGradient:(CGColorRef)startColor endColor:(CGColorRef)endColor
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawLinearGradient:context rect:self.contentView.frame startColor:startColor endColor:endColor];
    
}

- (void) drawLinearGradient:(CGContextRef)context rect:(CGRect)rect startColor:(CGColorRef)startColor endColor:(CGColorRef)endColor
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGFloat locations[] = { 0.0, 1.0 };
    
    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    CGPoint startPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
    CGPoint endPoint = CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    
    CGContextSaveGState(context);
    CGContextAddRect(context, rect);
    CGContextClip(context);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
    CGContextRestoreGState(context);
}

- (IBAction)onCallToActionTap:(id)sender {
    [self presentViewController:self];
}

- (void)presentViewController:(HeroCell *)heroCell
{
    [self.delegate presentViewController:self];
}
@end
