//
//  LKSearchViewController.m
//  LKSearchVC
//
//  Created by likun on 2017/11/17.
//  Copyright © 2017年 likun. All rights reserved.
//

#import "LKSearchViewController.h"
#import "SearchHeader.h"
@interface LKSearchViewController ()
@property (nonatomic ,strong) SearchHeader * searchHeader;
@end

@implementation LKSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.searchHeader = [[SearchHeader alloc] init];
    self.searchHeader.frame = CGRectMake(0, -64, SCREEN_WIDTH, 64);
    [self.view addSubview:self.searchHeader];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)loadHeaderBar{
    [self.searchHeader.searchTextField becomeFirstResponder];
    __weak typeof(self) weakself = self;
    [UIView animateWithDuration:0.5 animations:^{
        weakself.searchHeader.frame = CGRectMake(0, 0, SCREEN_WIDTH, 64);
    }];
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBar.hidden = YES;
    [self loadHeaderBar];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:YES];
    self.navigationController.navigationBar.hidden = NO;
}
@end
