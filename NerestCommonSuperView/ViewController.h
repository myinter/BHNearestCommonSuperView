//
//  ViewController.h
//  NerestCommonSuperView
//
//  Created by bighiung on 2020/5/24.
//  Copyright © 2020 bighiung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UIView *commonView;
    __weak IBOutlet UIView *blueView;
    __weak IBOutlet UIView *redView;
    
    IBOutletCollection(UIView) NSArray *views;
    
}

@end

