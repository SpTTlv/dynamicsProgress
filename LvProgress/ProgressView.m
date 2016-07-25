//
//  ProgressView.m
//  LvProgress
//
//  Created by Lv on 16/7/25.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    [self setNeedsDisplay];

}
- (void)drawRect:(CGRect)rect {
    // Drawing code

    CGPoint centerP = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 10;
    
    CGFloat startA = - M_PI_2;
    CGFloat endA = -M_PI_2 + self.progress * M_PI * 2;
    
    
    
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:centerP radius:radius startAngle:startA endAngle:endA clockwise:YES];
    [[UIColor purpleColor] set];
    path.lineWidth = 10.0;
//    path.lineJoinStyle = kCGLineJoinRound;
    path.lineCapStyle = kCGLineCapRound;
    [path stroke];




}


@end
