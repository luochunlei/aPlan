//
//  TGThingsTableController.h
//  aPlane
//
//  Created by 春雷 罗 on 12-7-23.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TGThing.h"

// 事情的显示Table控件。
@interface TGThingsTableController : UITableViewController {

    TGThings * _things;
}

//用Style和数据初始化表格。
- (id)initByData:(TGThings *) things;

@end
