//
//  TGNormalTableVeiwCell.h
//  aPlane
//
//  Created by 春雷 罗 on 12-7-24.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <UIKit/UIKit.h>

// NOTICE : 目前这个控件没有使用，留在以后修改。

// 自定义的，一般情况下的表格一行的控件。
// 显示样式：显示内容和对应的时间。
@interface TGNormalTableVeiwCell : UITableViewCell

// 显示详细内容。
@property(nonatomic,retain) UILabel *lblContent;  
// 显示事件对应的时间。
@property(nonatomic,retain) UILabel *lblDate; 

@end
