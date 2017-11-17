//
//  LKRootViewController.m
//  LKSearchVC
//
//  Created by likun on 2017/11/17.
//  Copyright © 2017年 likun. All rights reserved.
//

#import "LKRootViewController.h"
#import "LKSearchViewController.h"
@interface LKRootViewController ()

@end

@implementation LKRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"首页";
    UIBarButtonItem * searchItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(showSearch)];
    // Do any additional setup after loading the view.
    self.navigationItem.rightBarButtonItem = searchItem;
    
}

-(void)showSearch{
    LKSearchViewController * searchVC = [[LKSearchViewController alloc] init];
    [self presentViewController:searchVC animated:NO completion:nil];
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
