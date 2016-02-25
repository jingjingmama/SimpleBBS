//
//  TopScrollView.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/23.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "TopScrollView.h"
#import "TopStoryView.h"

@interface TopScrollView()<UIScrollViewDelegate>


/***/
@property (nonatomic, strong) UIPageControl *pageCtrl;
/***/
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TopScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _scrollView  = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
        _scrollView.contentOffset = CGPointMake(kScreenWidth, 0);
        _scrollView.contentSize = CGSizeMake(kScreenWidth * 8, 0);
        _scrollView.delegate = self;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES;
        for (int i = 0; i < 8; i++) {
            //        TopStoryView *view = [[TopStoryView alloc] initWithFrame:frame];
            //        [view setImage:picArray[i] content:contentArray[i]];
            //        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
            //        view1.backgroundColor = [UIColor redColor];
            //        [_scrollView addSubview:view1];
            
        }
        
       
        _scrollView.backgroundColor = [UIColor purpleColor];
        [self addSubview:_scrollView];
        _pageCtrl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 50)];
        _pageCtrl.currentPageIndicatorTintColor = [UIColor whiteColor];
        _pageCtrl.pageIndicatorTintColor = [UIColor grayColor];
        _pageCtrl.numberOfPages = 6;
        _pageCtrl.currentPage = 0;
        [self addSubview:_pageCtrl];
        _timer = [[NSTimer alloc]init];

    }
    return self;
}

- (void)setScrollVIewContent
{
    [_timer invalidate];
    NSArray *picArray = @[@"ic6.png",@"ic1.png",@"ic2.png",@"ic3.png",@"ic4.png",@"ic5.png",@"ic6.png",@"ic1.png"];
    NSArray *contentArray = @[@"这是一个循环滚动的图片6",@"这是一个循环滚动的图片1",@"这是一个循环滚动的图片2",@"这是一个循环滚动的图片3",@"这是一个循环滚动的图片4",@"这是一个循环滚动的图片5",@"这是一个循环滚动的图片6",@"这是一个循环滚动的图片1"];
//    _scrollView.backgroundColor = [UIColor purpleColor];
    CGRect frame = CGRectMake(0, 0, kScreenWidth, 150);
    for (int i = 0; i < picArray.count; i++) {
        TopStoryView *view = [[TopStoryView alloc]initWithFrame:CGRectMake(kScreenWidth * i, 0, kScreenWidth, 150) image:picArray[i] content:contentArray[i]];
//        [view setImage:picArray[i] content:contentArray[i]];
        [_scrollView addSubview:view];
    }
    
    
//    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
//    view1.backgroundColor = [UIColor redColor];
//    [_scrollView addSubview:view1];
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.f target:self selector:@selector(scrollToNextPage) userInfo:nil repeats:YES];
    
}

- (void)scrollToNextPage{
    [_scrollView setContentOffset:CGPointMake(_scrollView.contentOffset.x + kScreenWidth, 0) animated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if ([scrollView isEqual:_scrollView]) {
        if (scrollView.contentOffset.x <= 0) {
            _scrollView.contentOffset = CGPointMake(6 * kScreenWidth, 0);
            _pageCtrl.currentPage = 5;
        }
        else if (scrollView.contentOffset.x >= 7 * kScreenWidth) {
            _scrollView.contentOffset = CGPointMake(kScreenWidth, 0);
            _pageCtrl.currentPage = 0;
        }
        else {
            _pageCtrl.currentPage = scrollView.contentOffset.x / kScreenWidth - 1;
        }
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [_timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5.0]];
}

@end
