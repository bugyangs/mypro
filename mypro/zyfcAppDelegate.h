//
//  zyfcAppDelegate.h
//  mypro
//
//  Created by zyf on 14-7-30.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface zyfcAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
