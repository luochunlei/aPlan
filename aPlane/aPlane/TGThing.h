//
//  TGThing.h
//  aPlane
//
//  Created by 春雷 罗 on 12-5-31.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

// 虽然是计划软件，也可以作为备忘录使用，
// 所以使用Thing，而不是Plan，当时间超过现在，就是计划。

//
// 计划/事情的基本单位。
// 内容，时间，提醒等相关信息。
//
@interface TGThing : NSObject
{
    //事情的内容
    NSString * _content;
    
    //事情发生的时间
    NSDateComponents * _datetime;
    
    //TODO 以后加入唤醒方式等。
    
}

@property NSString * content;
@property NSDateComponents * datetime;

//初始化一件计划。
- (id) initContent:(NSString *)content byCalendar:(NSDateComponents *)calendar;

- (NSDateComponents *) cloneDate:(NSDateComponents *)date;

@end

//
// 计划的列表(可能需要根据具体的情况分成不同的组)
// 目前设想：天／周／月
//
@interface TGThings : NSObject 
{
    NSMutableArray * list;
}

//初始化。
- (id) init;

//得到所有的计划列表(类型TGThing *)。（只读，不允许修改）
- (NSMutableArray *) list;

// 添加一个事情
- (void) add:(TGThing *) thing;

// 删除一个事情。
- (void) del:(TGThing *) thing;

- (id) indexOf:(int) index;

@end
