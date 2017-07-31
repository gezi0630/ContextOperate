//
//  customView.m
//  矩阵操作（画板的平移、旋转）
//
//  Created by MAC on 2017/7/1.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "customView.h"

@implementation customView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //1、获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2、描述路径(Oval：椭圆图形)
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(-100, -50, 200, 100)];
    
    // 上下文矩阵操作
    // 注意:矩阵操作必须要在添加路径之前
    
    //使上下文平移
    CGContextTranslateCTM(ctx, 100, 50);
    
    //使上下文缩放
    CGContextScaleCTM(ctx, 0.5, 0.5);
    
    //使上下文旋转
    CGContextRotateCTM(ctx, M_PI_2 / 2);
    
    
    //3、把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    
    [[UIColor redColor]set];
    
    //4、渲染上下文
    CGContextFillPath(ctx);
    
    
    
}




@end
