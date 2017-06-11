//
//  HBOverlayView.m
//  CarApp
//
//  Created by 管理员 on 2017/6/8.
//  Copyright © 2017年 dragon. All rights reserved.
//

#import "HBOverlayView.h"

@implementation HBOverlayView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
    }
    return self;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    UIView *view = touch.view;
    
    if (view == self) {
        [self.ShoppingCartView dismissAnimated:YES];
    }
}

@end
