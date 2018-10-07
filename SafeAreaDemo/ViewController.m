//
//  ViewController.m
//  SafeAreaDemo
//
//  Created by 黃秋陽 on 2018/9/19.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "ViewController.h"
#import "SafeAreaView.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UIView *sView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.safeAreaLayoutGuide.owningView.backgroundColor = [UIColor greenColor];
    
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    
    UILabel *label1 = [[UILabel alloc]init];
    label1.numberOfLines = 0;
    label1.text = @"A custom header has a label that is added to the header’s content view. A custom cell has a label that is added to the cell’s content view and a separator that is added to the cell. The header and cells are transparent. A cell’s content view has a white background. A header’s content view has a red background.You can see that the header’s and the cell’s content view frame is changed in landscape orientation. At the same time the cell and the separator frames aren’t changed. It’s a default behavior which can be managed by the new UITableView’s insetsContentViewsToSafeArea property:";
    label1.backgroundColor = [UIColor orangeColor];
    self.label1 = label1;
    
    [self.view addSubview:self.label1];
    
    SafeAreaView *sView = [[SafeAreaView alloc]init];
    sView.backgroundColor = [UIColor redColor];
    self.sView = sView;
    [self.view addSubview:sView];
}
- (void)viewSafeAreaInsetsDidChange{
    [super viewSafeAreaInsetsDidChange];
    
    NSLog(@"%f", self.view.safeAreaInsets.top);
    
    self.label1.frame = CGRectMake(self.view.safeAreaInsets.left, self.view.safeAreaInsets.top, [UIScreen mainScreen].bounds.size.width - self.view.safeAreaInsets.left - self.view.safeAreaInsets.right, 100);
    
    self.sView.frame = CGRectMake(self.view.safeAreaInsets.left, [UIScreen mainScreen].bounds.size.height - 100, [UIScreen mainScreen].bounds.size.width - self.view.safeAreaInsets.left - self.view.safeAreaInsets.right, 100);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
