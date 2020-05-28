//
//  BHNearestCommonSuperView.c
//  NerestCommonSuperView
//
//  Created by bighiung on 2020/5/24.
//  Copyright © 2020 bighiung. All rights reserved.
//

#include "BHNearestCommonSuperView.h"

UIView *NearestCommonSuperView(UIView *viewA,UIView *viewB){
    if (viewA.window != viewB.window) {
        return nil;
    }
    UIView *viewAPointer = viewA,*viewBPointer = viewB;
    while (viewAPointer && viewBPointer) {
        if (viewAPointer == viewBPointer) {
            return viewAPointer;
        }
        viewAPointer = viewAPointer.superview;
        viewBPointer = viewBPointer.superview;
        if (viewAPointer == nil) {
            viewAPointer = viewB;
        }
        if (viewBPointer == nil) {
            viewBPointer = viewA;
        }
    }
    return nil;
}

UIView *NearestCommonSuperViewOfViews(NSArray<UIView *> *array){
    if (array.count) {
        UIWindow *commonWindow = array.firstObject.window;
        NSUInteger sizeOfViews = array.count;
        for (UIView *view in array) {
            if (commonWindow != view.window) {
                return nil;
            }
        }
        UIView *currentCommonView = array.firstObject;
        //从第二个视图直到最后一个视图，求最终的共同父视图。
        for (NSUInteger index = 1; index != sizeOfViews; index++) {
            currentCommonView = NearestCommonSuperView(currentCommonView, array[index]);
        }
        return currentCommonView;
    }
    return nil;
}

//获得一个以一个视图开始的所有子视图的层级结构。
NSArray<NSArray<UIView *> *> *GetLevelStructureFromView(UIView *view){
    if ([view isKindOfClass:[UIView class]]) {
        NSMutableArray *output = [NSMutableArray new];
        [output addObject:@[view]];
        NSMutableArray *lastLevel = output.lastObject;
        while (lastLevel.count) {
            NSMutableArray *nextLevel = [NSMutableArray new];
            for (UIView *aViewOfLastLevel  in lastLevel) {
                [nextLevel addObjectsFromArray:aViewOfLastLevel.subviews];
            }
            if (nextLevel.count) {
                [output addObject:nextLevel];
            }
            lastLevel = nextLevel;
        }
        return output;
    }
    return nil;
}

