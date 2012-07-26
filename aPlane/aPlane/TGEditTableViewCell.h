//
//  TGEditTableViewCellCell.h
//  aPlane
//
//  Created by 春雷 罗 on 12-7-24.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <UIKit/UIKit.h>

//自定义的CELL，选中的情况下，就是编辑状态，非选中的情况下，就是只读状态。 
@interface TGEditTableViewCell : UITableViewCell

// 显示详细内容。
@property(nonatomic,retain) UILabel *lblContent; 

@property(nonatomic,retain) UITextView *txtContent; 

// 显示事件对应的时间。
@property(nonatomic,retain) UILabel *lblDate; 

@property(nonatomic,retain) UITextView *txtDate; 

@end

