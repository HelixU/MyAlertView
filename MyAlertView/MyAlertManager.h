//
//  MyAlertManager.h
//  MyAlertView
//
//  Created by ShenZheng on 16/9/23.
//  Copyright © 2016年 ShenZheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^VoidBlockType)();

@interface MyAlertTask : NSObject
// alertView出现在哪个controller上面
@property (nonatomic, retain) UIViewController *target;
// 弹出的alertView
@property (nonatomic, retain) UIView *alertView;

@property (nonatomic, copy) VoidBlockType dismissBlock;


+ (MyAlertTask *) alertTaskWithTarget: (UIViewController *)target View: (UIView *) alertView;

+ (MyAlertTask *) alertTaskWithTarget: (UIViewController *)target View: (UIView *) alertView DismissBlock: (VoidBlockType) dimissBlock;



@end

@interface MyAlertManager : NSObject

+ (MyAlertManager *) sharedAlertManager;

- (void) alertWithAlertTask: (MyAlertTask *)task;
- (void) dismissAlertView;

@end
