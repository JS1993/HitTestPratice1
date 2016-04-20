//
//  OrangeView.m
//  HitTestPratice1
//
//  Created by  江苏 on 16/4/20.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "OrangeView.h"

@interface OrangeView ()
@property(nonatomic,strong) IBOutlet UIButton* btn;


@end

@implementation OrangeView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //当前坐标系转换到指定控件的坐标系
    CGPoint childP =[self convertPoint:point toView:self.btn];
    UIView* fitView=[self.btn hitTest:childP withEvent:event];
    
    if (fitView) {
        return fitView;
    }
    
    return self;
}

@end
