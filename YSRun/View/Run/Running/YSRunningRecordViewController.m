//
//  YSRunningRecordViewController.m
//  YSRun
//
//  Created by moshuqi on 15/10/16.
//  Copyright © 2015年 msq. All rights reserved.
//

#import "YSRunningRecordViewController.h"
#import <MAMapKit/MAMapKit.h>
#import "AFNetworking.h"

@interface YSRunningRecordViewController () <MAMapViewDelegate>

@end

@implementation YSRunningRecordViewController

const static NSString *APIKey = @"45e4efb100710051075252c2407f9402";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [MAMapServices sharedServices].apiKey = @"用户Key";
    
    MAMapView *mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    mapView.delegate = self;
    
    [self.view addSubview:mapView];
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end