//
//  SuspendButton.m
//  QianfengSchool
//
//  Created by PengSi on 16/7/12.
//  Copyright © 2016年 Combanc. All rights reserved.
//

#import "SuspendButton.h"

@implementation SuspendButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    if (self) {
        [self createUI];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self createUI];
    }
    return self;
}

- (void)createUI {
    self.backgroundColor = [UIColor blueColor];
    [self setTitle:@"" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:@"f_add_icon"] forState:UIControlStateNormal];
    [self addTarget:self action:@selector(suspendBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 25;
}

- (void)suspendBtnClick {
    if (_suspendBtnClicked) {
        _suspendBtnClicked();
    }
}


@end
