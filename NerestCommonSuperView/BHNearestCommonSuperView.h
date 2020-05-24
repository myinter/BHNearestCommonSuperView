//
//  BHNearestCommonSuperView.h
//  NerestCommonSuperView
//
//  Created by bighiung on 2020/5/24.
//  Copyright © 2020 bighiung. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 求两个视图的共同父视图
 */
UIView *NearestCommonSuperView(UIView *viewA,UIView *viewB);
/*
 求多个视图的共同父视图
 */
UIView *NearestCommonSuperViewOfViews(NSArray<UIView *> *array);
