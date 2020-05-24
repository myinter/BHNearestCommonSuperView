//
//  ViewController.m
//  NerestCommonSuperView
//
//  Created by bighiung on 2020/5/24.
//  Copyright © 2020 bighiung. All rights reserved.
//

#import "ViewController.h"
#import "BHNearestCommonSuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"commonView %@",commonView);
    
    NSLog(@"redView %@",redView);
    
    NSLog(@"blueView %@",blueView);
    
    NSLog(@"commonView %@",NearestCommonSuperView(redView, blueView));
    
    NSLog(@"commonViewOfViews %@",NearestCommonSuperViewOfViews(views));

}

@end
