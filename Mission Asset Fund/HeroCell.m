//
//  HeroCell.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/14/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "HeroCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation HeroCell

@synthesize contentView;

- (void)awakeFromNib
{
    // Initialization code
    self.callToActionButton.layer.borderWidth = 1;
    self.callToActionButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.callToActionButton.layer.cornerRadius = (self.callToActionButton.frame.size.width / 2);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)initWithGradient:(CGColorRef)startColor endColor:(CGColorRef)endColor
{
    CGContextRef context = UIGraphicsGetCurrentContext();
//    [self drawLinearGradient:context rect:self.contentView.frame startColor:startColor endColor:endColor];
    
}

- (void)drawRect:(CGRect)rect
{
    NSLog(@"hello");
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGGradientRef gradient;
    CGColorSpaceRef colorspace;
    CGFloat locations[4] = { 0.0, 0.25, 0.5, 0.75 };
    
    NSArray *colors = @[(id)[UIColor redColor].CGColor,
                        (id)[UIColor greenColor].CGColor,
                        (id)[UIColor blueColor].CGColor,
                        (id)[UIColor yellowColor].CGColor];
    
    colorspace = CGColorSpaceCreateDeviceRGB();
    
    gradient = CGGradientCreateWithColors(colorspace,
                                          (CFArrayRef)colors, locations);
    
    CGPoint startPoint, endPoint;
    startPoint.x = 0.0;
    startPoint.y = 0.0;
    
    endPoint.x = 500;
    endPoint.y = 500;
    
    CGContextDrawLinearGradient(context, gradient,
                                startPoint, endPoint, 0);
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
