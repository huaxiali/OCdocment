//
//  AppDelegate.h
//  NewMovie
//
//  Created by 一狂小生 on 2018/5/1.
//  Copyright © 2018年 1226042260@qq.con. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

