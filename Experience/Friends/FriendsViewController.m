//
//  FriendsViewController.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/17.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "FriendsViewController.h"

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"通讯录";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]} ;
    self.navigationController.navigationBar.translucent = NO;//    Bar的模糊效果，默认为YES
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];

    // Do any additional setup after loading the view from its nib.
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
