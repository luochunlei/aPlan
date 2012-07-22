//
//  TGThing.m
//  aPlane
//
//  Created by 春雷 罗 on 12-5-31.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import "TGThing.h"

@implementation TGThing


@synthesize content = _content;
@synthesize datetime = _datetime;

- (id) initContent:(NSString *)content 
            byCalendar:(NSDateComponents *)datetime {
    if ( self=[super init] ){
        _content = @"";
        _datetime = [self cloneDate:datetime];
        
    }
    return self;
}

- (NSDateComponents *) cloneDate:(NSDateComponents *)date { 
    NSDateComponents * newDate = [[NSDateComponents alloc] init];
    [newDate setYear:date.year];
    [newDate setMonth:date.month];
    [newDate setDay:date.day];
    [newDate setHour:date.hour];
    [newDate setMinute:date.minute];
    [newDate setSecond:date.second];
    
    return newDate;
}


@end

@implementation TGThings

- (id) init {
    if ( self = [super init] ) {
        list = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSMutableArray *) list {
    return list;
}

// 添加一个事情
- (void) add:(TGThing *) thing {
    [list addObject:thing];
}

// 删除一个事情。
- (void) del:(TGThing *) thing {
    [list delete:thing];
}

- (id) indexOf:(int) index {
    return [list objectAtIndex:index];
}

@end
