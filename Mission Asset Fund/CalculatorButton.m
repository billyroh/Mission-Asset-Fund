//
//  CalculatorButton.m
//  Mission Asset Fund
//
//  Created by Billy Roh on 7/15/14.
//  Copyright (c) 2014 Billy Roh. All rights reserved.
//

#import "CalculatorButton.h"

@implementation CalculatorButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    // Call the parent implementation of initWithCoder
    self = [super initWithCoder:coder];
    
    // Custom drawing methods
    if (self) {
        // Our custom CALayer drawing will go here
        CALayer *layer = self.layer;
        
        layer.cornerRadius = 4.5f;
        layer.borderWidth = 1;
        layer.borderColor = [UIColor whiteColor].CGColor;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
