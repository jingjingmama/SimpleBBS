//
//  NewEventViewController.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/24.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "NewEventViewController.h"

@interface NewEventViewController ()

/***/
@property (nonatomic, strong) UILabel *labPlaceHolder;
/***/
@property (nonatomic, strong) UITextView *textView;

@end

@implementation NewEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavigationBar];
    [self setContentView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavigationBar {
    UIView *navigationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 64)];
    navigationView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:navigationView];
    UIButton *btnCancel = [[UIButton alloc]initWithFrame:CGRectMake(10, 24, 50, 40)];
    [btnCancel setTitle:@"取消" forState:UIControlStateNormal];
    [btnCancel setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnCancel addTarget:self action:@selector(onCancelBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [navigationView addSubview:btnCancel];
    UIButton *btnConfirm = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth - 50 - 10, 24, 50, 40)];
    [btnConfirm setTitle:@"确认" forState:UIControlStateNormal];
    [btnConfirm setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnCancel addTarget:self action:@selector(onConfirmBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [navigationView addSubview:btnConfirm];
    [self.view addSubview:navigationView];
}

- (void)setContentView {
    _textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, 150)];
    [self.view addSubview:_textView];
    
    _labPlaceHolder = [[UILabel alloc]initWithFrame:CGRectMake(10, 64, kScreenWidth, 20)];
    _labPlaceHolder.textColor = [UIColor grayColor];
    _labPlaceHolder.text = @"请在此输入内容";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChange) name:UITextViewTextDidChangeNotification object:nil];
    [self.view addSubview:_labPlaceHolder];
    
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, 150, kScreenWidth, 1)];
    line.backgroundColor = [UIColor grayColor];
    [self.view addSubview:line];
}

//- (void)textChange{
//    if (condition) {
//        statements
//    }
//}

- (void)onCancelBtnClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(void)onConfirmBtnClick{
    
}

- (void)dealloc{
    NSLog(@"%s",__func__);
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
