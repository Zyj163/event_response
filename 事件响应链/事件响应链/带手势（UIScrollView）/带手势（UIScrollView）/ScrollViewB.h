//
//  ScrollViewB.h
//  带手势（UIScrollView）
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ScrollViewA;

@interface ScrollViewB : UIScrollView

@property (weak, nonatomic) ScrollViewA *sv;

- (void)addScrollView:(ScrollViewA *)scrollView;

- (void)reActive;
- (void)unActive;

@end
