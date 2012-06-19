//
//  TGThing.h
//  aPlane
//
//  Created by 春雷 罗 on 12-5-31.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

//
// 计划的基本单位。
// 内容，时间，提醒等相关信息。
//
@interface TGThing : NSObject
{
    //事情的内容
    NSString * content;
    //事情发生的时间
    NSDate * date;
    
}

- (id) init:(NSString *)content :(NSData *)date;

@end

//
// 计划的列表(可能需要根据具体的情况分成不同的组)
// 目前设想：天／周／月
//
@interface Things : NSObject 
{
    NSMutableArray * list;
}

// 添加一个事情
- (void) add:(TGThing *) thing;

@end
