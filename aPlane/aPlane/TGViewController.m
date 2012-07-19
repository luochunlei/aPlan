//
//  TGViewController.m
//  aPlane
//
//  Created by chunlei luo on 12-4-28.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import "TGViewController.h"

@interface TGViewController ()

@end

@implementation TGViewController

/* 界面设计
 * 首先从最简单的开始入手，整个界面就是显示一个列表，每个项目是任务。
 * 在最上方有一个工具栏，显示可以进行的功能：添加、删除。
 * 点击其中一个记录，扩大显示详细信息。点击其他的地方，回到列表状态。
 */
- (void)loadView {
    CGRect screenRect = [[UIScreen mainScreen] applicationFrame];
    _screenWidth = screenRect.size.width;
    _screenHeight = screenRect.size.height;
    
    UIView * contentView = [[UIView alloc] initWithFrame:screenRect];
    
    //工具栏
    _toolbarHeader = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, _screenWidth, 30)];
    [contentView addSubview:_toolbarHeader];
    
    NSMutableArray * toolBarItems = [NSMutableArray array];
    
    UIBarButtonItem * fix = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fix.width = 20;
    [toolBarItems addObject:fix];
    
    //按钮“添加”
    UIBarButtonItem * _baritemAdd = [[UIBarButtonItem alloc] initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(addPlan)];
    [toolBarItems addObject:_baritemAdd];
    
    [toolBarItems addObject:
        [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil]];
    
    //按钮“删除”
    UIBarButtonItem * _baritemDel = [[UIBarButtonItem alloc] initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(delPlan)];
    [toolBarItems addObject:_baritemDel];
    
    fix = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fix.width = 20;
    [toolBarItems addObject:fix];
    
    _toolbarHeader.items = toolBarItems;
    
    //添加任务列表 TODO
    
    self.view = contentView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark 业务处理方法

- (void)addPlan {
    
}

- (void)delPlan {

}

@end
