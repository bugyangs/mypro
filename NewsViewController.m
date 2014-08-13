//
//  NewsViewController.m
//  mypro
//
//  Created by zyf on 14-7-30.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()
{
    CLLocationManager *clManager;
}

@end

@implementation NewsViewController

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
    [self initLocaltion];
}

-(void)initLocaltion
{
    NSLog(@"开始定位");
    clManager = [[CLLocationManager alloc]init];
    if(![CLLocationManager locationServicesEnabled]){
        NSLog(@"定位不可用，请开启定位服务器");
    }
    else{
        clManager.desiredAccuracy = kCLLocationAccuracyBest;
        clManager.distanceFilter = 1000.0f;
        clManager.delegate = self;
        [clManager startUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"定位信息");
    CLLocation *the_location = [locations lastObject];
//    NSString *latitude = [NSString stringWithFormat:@"%f",the_location.coordinate.latitude];
    NSLog(@"经度%f   纬度%f",the_location.coordinate.latitude,the_location.coordinate.longitude);

}
- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"定位失败");
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
