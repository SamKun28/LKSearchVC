//
//  SearchHeader.m
//  LKSearchVC
//
//  Created by likun on 2017/11/17.
//  Copyright © 2017年 likun. All rights reserved.
//

#import "SearchHeader.h"

@implementation SearchHeader

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        self.searchTextField = [[UITextField alloc] init];
        [self addSubview:self.searchTextField];
        self.searchTextField.backgroundColor = [UIColor  whiteColor];
        [self.searchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.mas_bottom).offset(-10);
            make.right.equalTo(self.mas_right).offset(-20);
            make.left.equalTo(self.mas_left).offset(20);
            make.top.equalTo(self.mas_top).offset(30);
        }];
    }
    return self;
}

@end
