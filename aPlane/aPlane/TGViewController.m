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

- (void)loadView {
    
    //画面初始化前，先创建数据。
    [self createTestThings];
    
    // 构筑画面。
    UIView * contentView = [self createView];
    
    // 然后再在画面上加载数据
    [self loadData2View];
    
    self.view = contentView;
}

- (UIView *) createView {
    
    // 取得可用屏幕大小后，开始设定各种控件的尺寸大小。
    CGRect screenRect = [[UIScreen mainScreen] applicationFrame];
    _screenWidth = screenRect.size.width;
    _screenHeight = screenRect.size.height;
    
    _toolbarHeight = 30;
    
    UIView * contentView = [[UIView alloc] initWithFrame:screenRect];
    
    //工具栏
    _toolbarHeader = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, _screenWidth, _toolbarHeight)];
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
    
    // 添加任务列表
    tableControl = [[TGThingsTableController alloc] initByData:_things];
    [tableControl.tableView setFrame:CGRectMake(0, _toolbarHeight, _screenWidth, _screenHeight - _toolbarHeight)];
    
    [contentView addSubview:tableControl.tableView];
    
    // 返回内容控件。
    return contentView;
}

- (void) loadData2View {

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

//生成测试使用的计划。
- (void) createTestThings {
    
    _things = [[TGThings alloc] init];
    
    TGThing * thing;
    //NSCalendar * calendar;
    
    NSDateComponents * dc = [[NSDateComponents alloc] init];
    [dc setYear:2012];
    [dc setMonth:07];
    [dc setDay:22];
    [dc setHour:23];
    [dc setMinute:00];
    
    thing = [[TGThing alloc] initContent:@"test1" byCalendar:dc];
    [_things add:thing];
    
    [dc setHour:2];
    [dc setMinute:10];
    thing = [[TGThing alloc] initContent:@"test2" byCalendar:dc];
    [_things add:thing];
    
    [dc setHour:4];
    [dc setMinute:30];
    thing = [[TGThing alloc] initContent:@"test3" byCalendar:dc];
    [_things add:thing];
    
}

- (void) addPlan {
    
}

- (void) delPlan {

}

@end
