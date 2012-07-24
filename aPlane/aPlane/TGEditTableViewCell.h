//
//  TGEditTableViewCellCell.h
//  aPlane
//
//  Created by 春雷 罗 on 12-7-24.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <UIKit/UIKit.h>

//编辑状态下，表格的CELL
@interface TGEditTableViewCell : UITableViewCell

// 显示详细内容。
@property(nonatomic,retain) UILabel *lblContent;  
// 显示事件对应的时间。
@property(nonatomic,retain) UILabel *lblDate; 

@end
