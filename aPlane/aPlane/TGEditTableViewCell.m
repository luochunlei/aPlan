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
@synthesize txtContent = _txtContent;
@synthesize lblDate = _lblDate;
@synthesize txtDate = _txtDate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // TODO 大小应该外边设定，位置则是内部设定。
        [self setFrame:CGRectMake(0, 0, 320, 80)];
        
        // 左上部是时间
        int heightOfDate = 25;
        _lblDate = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 320, heightOfDate)];
        _lblDate.textColor = [UIColor blackColor];
        _lblDate.backgroundColor = [UIColor clearColor];
        
        // 编辑日期
        _txtDate = [[UITextView alloc] initWithFrame:CGRectMake(10, 5, 320, heightOfDate)];
        _txtDate.textColor = [UIColor blackColor];
        _txtDate.backgroundColor = [UIColor whiteColor];
        //_txtDate.returnKeyType = UIReturnKeyGo;
        [_txtDate setHidden:YES];
        
        // 左下部是具体内容
        _lblContent = [[UILabel alloc] initWithFrame:CGRectMake(10, 5 + heightOfDate + 5, 320, 40)];
        _lblContent.textColor = [UIColor redColor];
        _lblContent.backgroundColor = [UIColor clearColor];
        
        //编辑具体内容
        _txtContent = [[UITextView alloc] initWithFrame:CGRectMake(10, 5 + heightOfDate + 5, 320, 40)];
        _txtContent.textColor = [UIColor redColor];
        _txtContent.backgroundColor = [UIColor blackColor];
        //_txtContent.returnKeyType = UIReturnKeyDone;
        //_txtContent.delegate = [[ContentViewDelegate alloc] init:_txtContent];
        [_txtContent setHidden:YES];
        
        //[_txtDate setUserInteractionEnabled:NO];
        //[_txtContent setUserInteractionEnabled:NO];

        [self addSubview:_lblDate];
        [self addSubview:_txtDate];
        [self addSubview:_lblContent];
        [self addSubview:_txtContent];

    }
    return self;
}


// 选中后的处理。
// 如果选中，就变成可编辑状态，未被选中的时候，变成只读信息。
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    if(selected) {
        [_lblDate setHidden:YES];
        [_lblContent setHidden:YES];
        
        // TODO 选中时，编辑框的背景色无效？为什么？
        [_txtDate setHidden:NO];
        [_txtContent setHidden:NO];

    } else {
        [_lblDate setHidden:NO];
        [_lblContent setHidden:NO];
        
        [_txtDate setHidden:YES];
        [_txtContent setHidden:YES];
        
        //当焦点离开后，就关闭输入法。
        [_txtContent resignFirstResponder];
        [_txtContent resignFirstResponder];
    }
}

@end
