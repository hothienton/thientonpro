//
//  MainViewController.m
//  ThienTonPro
//
//  Created by tin vu on 6/21/16.
//  Copyright © 2016 vuvantiep. All rights reserved.
//

#import "MainViewController.h"
#import "MFSideMenu.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)btnLeftSideAction:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}

@end
