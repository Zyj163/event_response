//
//  ViewController.m
//  带手势（UIScrollView）
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewA.h"
#import "ScrollViewB.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet ScrollViewA *scrollViewA;
@property (weak, nonatomic) IBOutlet ScrollViewB *scrollViewB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.scrollViewB addScrollView: self.scrollViewA];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (self.scrollViewA.contentOffset.y >= 50) {
        [self.scrollViewB reActive];
    }else {
        [self.scrollViewB unActive];
    }
}

@end
