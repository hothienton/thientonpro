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

@property (weak, nonatomic) IBOutlet UIButton *btnAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lb_namesong;
@property (weak, nonatomic) IBOutlet UILabel *lb_singer;
@property (weak, nonatomic) IBOutlet UIButton *btn_Play_and_Stop;

@property (nonatomic) BOOL isState;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btnAvatar.layer.cornerRadius = self.btnAvatar.frame.size.height/2;
    self.btnAvatar.layer.masksToBounds = YES;
    self.isState = false;
    self.btn_Play_and_Stop.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"play.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)btnLeftSideAction:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}

- (IBAction)btnAvatarAction:(id)sender {
    
}

//handle play song
- (IBAction)btn_Play_and_Stop:(id)sender {
    if (self.isState) {
        self.btn_Play_and_Stop.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"play.png"]];
        self.isState = false;
    } else {
        self.btn_Play_and_Stop.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"stop.png"]];
        self.isState = true;
    }
}

- (IBAction)btn_Next:(id)sender {
    
}
- (IBAction)btn_Preview:(id)sender {
    
}

@end
