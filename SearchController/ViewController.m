//
//  ViewController.m
//  SearchController
//
//  Created by doohanTech on 2017/10/10.
//  Copyright © 2017年 CaiJie. All rights reserved.
//

#import "ViewController.h"
#import "OldViewController.h"
#import "NewFutureViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)oldSearch:(UIButton *)sender {
    OldViewController *oldVC = [[OldViewController alloc] init];
    oldVC.navigationItem.title = @"iOS 11之前";
    [self.navigationController pushViewController:oldVC animated:YES];
    
}


- (IBAction)lasterSearch:(UIButton *)sender {
    NewFutureViewController *futureVC = [[NewFutureViewController alloc] init];
    futureVC.navigationItem.title = @"iOS 11新特性";
    [self.navigationController pushViewController:futureVC animated:YES];
}

@end
