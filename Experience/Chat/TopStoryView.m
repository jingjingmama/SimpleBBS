//
//  TopStoryView.m
//  Experience
//
//  Created by 麻菁菁 on 16/2/22.
//  Copyright © 2016年 麻菁菁. All rights reserved.
//

#import "TopStoryView.h"

@interface TopStoryView()
/***/
@property (nonatomic, strong) UIImageView *imgView;
/***/
@property (nonatomic, strong) UILabel *lab;
@end

@implementation TopStoryView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame image:(NSString *)imageName content:(NSString *)content
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        [imageView setImage:[UIImage imageNamed:imageName]];

        [self addSubview:imageView];
        _imgView = imageView;
        UILabel *labContent = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
        labContent.textColor = [UIColor purpleColor];
        [labContent setBackgroundColor:[UIColor clearColor]];
        labContent.textAlignment = NSTextAlignmentCenter;
        _lab = labContent;
        [_lab setText:content];
        [self addSubview:labContent];
    }
    return self;
}


@end
