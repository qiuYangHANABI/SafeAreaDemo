//
//  SafeAreaView.m
//  SafeAreaDemo
//
//  Created by 黃秋陽 on 2018/9/19.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "SafeAreaView.h"

@interface SafeAreaView ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation SafeAreaView

- (UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]init];
        _label.text = @"A custom header has a label that is added to the header’s content view. A custom cell has a label that is added to the cell’s content view and a separator that is added to the cell. The header and cells are transparent. A cell’s content view has a white background. A header’s content view has a red background.You can see that the header’s and the cell’s content view frame is changed in landscape orientation. At the same time the cell and the separator frames aren’t changed. It’s a default behavior which can be managed by the new UITableView’s insetsContentViewsToSafeArea property:";
        _label.numberOfLines = 0;
        [self addSubview:_label];
    }
    return _label;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews{
    [super layoutSubviews];
    //自定义的view中使用
    self.label.frame = self.safeAreaLayoutGuide.layoutFrame;
    
}

@end
