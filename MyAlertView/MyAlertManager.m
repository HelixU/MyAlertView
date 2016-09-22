//
//  MyAlertManager.m
//  MyAlertView
//
//  Created by ShenZheng on 16/9/23.
//  Copyright © 2016年 ShenZheng. All rights reserved.
//

#import "MyAlertManager.h"

#pragma MyAlertTask
@interface MyAlertTask()

@end
@implementation MyAlertTask

+ (MyAlertTask *) alertTaskWithTarget: (UIViewController *)target View: (UIView *) alertView
{
    MyAlertTask *task = [[MyAlertTask alloc] init];
    task.target = target;
    task.alertView = alertView;
    
    return task;
}

+ (MyAlertTask *) alertTaskWithTarget: (UIViewController *)target View: (UIView *) alertView DismissBlock: (VoidBlockType) dismissBlock
{
    MyAlertTask *task = [[MyAlertTask alloc] init];
    task.target = target;
    task.alertView = alertView;
    task.dismissBlock = dismissBlock;
    
    return task;
}

@end

#pragma MyAlertManager
@interface MyAlertManager()

@property (nonatomic,retain) NSMutableArray *alertTasks;


@end

@implementation MyAlertManager

static MyAlertManager *manager = nil;

+ (MyAlertManager *)sharedAlertManager
{
    @synchronized(self)
    {
        if (manager == nil) {
            
            manager = [[MyAlertManager alloc] init];
            
        }
    }
    
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.alertTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
