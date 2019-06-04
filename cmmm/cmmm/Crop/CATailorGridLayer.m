//
//  CATailorGridLayer.m
//  CameraDemo
//
//  Created by 郭鹏 on 2019/5/24.
//  Copyright © 2019 郭鹏. All rights reserved.
//

#import "CATailorGridLayer.h"
#import "UIColor+SWCustomMethod.h"


@implementation CATailorGridLayer

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
//        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];


    CGContextRef context = UIGraphicsGetCurrentContext();

    CGRect rct = self.bounds;
//    CGContextSetFillColorWithColor(context, self.bgColor.CGColor);
//
//    CGContextFillRect(context, rct);
//
//    CGContextClearRect(context, _clippingRect);


    //    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 0, [UIColor clearColor].CGColor);
    CGContextSetLineWidth(context, 0.5);

    rct = self.clippingRect;

    CGContextBeginPath(context);
    CGFloat dW = 0;
    for(int i = 0; i < 4; ++i){
        if ( i == 1 || i == 2 ) {
//            CGContextSetStrokeColorWithColor(context, [UIColor RGBColorWithR:255 G:255 B:255 alpha:0.7].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);

        } else {
            CGContextSetStrokeColorWithColor(context, self.gridColor.CGColor);
        }
        CGContextMoveToPoint(context, rct.origin.x+dW, rct.origin.y);
        CGContextAddLineToPoint(context, rct.origin.x+dW, rct.origin.y+rct.size.height);
        dW += _clippingRect.size.width/3;
        CGContextStrokePath(context);
    }

    dW = 0;
    for(int i = 0; i < 4; ++i){
        if ( i == 1 || i == 2 ) {
            CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//            CGContextSetStrokeColorWithColor(context, [UIColor RGBColorWithR:255 G:255 B:255 alpha:0.7].CGColor);
        } else {
            CGContextSetStrokeColorWithColor(context, self.gridColor.CGColor);
        }
        CGContextMoveToPoint(context, rct.origin.x, rct.origin.y+dW);
        CGContextAddLineToPoint(context, rct.origin.x+rct.size.width, rct.origin.y+dW);
        dW += rct.size.height/3;

        CGContextStrokePath(context);
    }
}




@end
