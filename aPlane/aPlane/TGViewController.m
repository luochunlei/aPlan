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
