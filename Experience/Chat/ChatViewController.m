//
//  ChatViewController.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/17.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "ChatViewController.h"
#import "TopScrollView.h"
#import "NewEventViewController.h"

@interface ChatViewController ()



@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"微信";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]} ;
    self.navigationController.navigationBar.translucent = NO;//    Bar的模糊效果，默认为YES
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"aa" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;
    //添加顶部滚动的广告栏
    TopScrollView *topView = [[TopScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
    [topView setScrollVIewContent];
    [self.view addSubview:topView];
    //添加中间新建帖子的按钮
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((kScreenWidth - 50) / 2, 200, 50, 50)];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 25;
    button.layer.borderWidth= 1;
    button.layer.borderColor = [[UIColor redColor] CGColor];
    [button setTitle:@"新建" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onNewBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onNewBtnClick{
    NewEventViewController *ctrl = [[NewEventViewController alloc]init];
    [self presentViewController:ctrl animated:YES completion:^{
        
    }];
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
