//
//  BaseViewController.m
//  mypro
//
//  Created by zyf on 14-7-30.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import "BaseViewController.h"
#import "NewsViewController.h"
#import "HomeViewController.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initNavi];
}

-(void)initNavi{
    NewsViewController *newsController = [[NewsViewController alloc]init];
    HomeViewController *homeController = [[HomeViewController alloc]init];
    newsController.title = @"新闻";
    homeController.title = @"主页";
    UITabBarItem *newsTabBar = [[UITabBarItem alloc]init];
    newsTabBar.title = @"新闻";
    UITabBarItem *homeTabBar = [[UITabBarItem alloc]init];
    homeTabBar.title = @"主页";
    
    newsController.tabBarItem = newsTabBar;
    homeController.tabBarItem = homeTabBar;
    
    UINavigationController *newsNaviController = [[UINavigationController alloc]initWithRootViewController:newsController];
    UINavigationController *homeNaviController = [[UINavigationController alloc]initWithRootViewController:homeController];
    
    NSArray *controllers = @[newsController,homeController];
    
    self.viewControllers = controllers;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
