//
//  TGEditTableViewCellCell.m
//  aPlane
//
//  Created by 春雷 罗 on 12-7-24.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import "TGEditTableViewCell.h"

@implementation TGEditTableViewCell

@synthesize lblContent = _lblContent;
@synthesize lblDate = _lblDate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // TODO 大小应该外边设定，位置则是内部设定。
        [self setFrame:CGRectMake(0, 0, 320, 80)];
        
        // 设定背景色。
        //self.backgroundColor = [UIColor blueColor];
        
        // 左上部是时间
        int heightOfDate = 25;
        _lblDate = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 320, heightOfDate)];
        _lblDate.textColor = [UIColor blackColor];
        
        
        // 左下部是具体内容
        _lblContent = [[UILabel alloc] initWithFrame:CGRectMake(10, 5 + heightOfDate + 5, 320, 40)];
        _lblContent.textColor = [UIColor redColor];
        
        [self addSubview:_lblDate];
        [self addSubview:_lblContent];

    }
    return self;
}


// 选中后的动画。
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
