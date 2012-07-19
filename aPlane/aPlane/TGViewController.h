//
//  TGViewController.h
//  aPlane
//
//  Created by chunlei luo on 12-4-28.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <UIKit/UIKit.h>

// Controller负责画面和业务，全部都包括。

@interface TGViewController : UIViewController
{
    //显示部分的高和宽，后面所有的控件大小都需要基于此计算。
    int     _screenWidth;
    int     _screenHeight;
    
    //控件：命名方式 _typeName
    UIToolbar * _toolbarHeader;
}

- (void)addPlan;
- (void)delPlan;

@end
