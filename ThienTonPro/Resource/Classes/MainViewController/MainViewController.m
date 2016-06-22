//
//  MainViewController.m
//  ThienTonPro
//
//  Created by tin vu on 6/21/16.
//  Copyright © 2016 vuvantiep. All rights reserved.
//

#import "MainViewController.h"
#import "MFSideMenu.h"
#import "MainTableViewCell.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *btnAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lb_namesong;
@property (weak, nonatomic) IBOutlet UILabel *lb_singer;
@property (weak, nonatomic) IBOutlet UIButton *btn_Play_and_Stop;

@property (nonatomic) BOOL isState;

@property (weak, nonatomic) IBOutlet UITableView *maintableview;

@property (strong, nonatomic) NSMutableArray *listSong;
@property (strong, nonatomic) NSMutableArray *img_listSong;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.maintableview.delegate = self;
    self.maintableview.dataSource = self;
    
    self.btnAvatar.layer.cornerRadius = self.btnAvatar.frame.size.height/2;
    self.btnAvatar.layer.masksToBounds = YES;
    self.isState = false;
    self.btn_Play_and_Stop.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"play.png"]];
    
    self.listSong = [NSMutableArray arrayWithObjects:@"Tình Yêu Bất Tận", @"Fiction", @"Thất Tình", @"Cơn Mưa Nước Mắt", nil];
    self.img_listSong = [NSMutableArray arrayWithObjects:@"tinhyeubattan.png", @"fiction.png", @"thattinh.png", @"conmuanuocmat.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)btnLeftSideAction:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}

- (IBAction)btnAvatarAction:(id)sender {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listSong.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainTableViewCell *mainCell = (MainTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"mainCell"];
    mainCell.lb_name_song.text = [self.listSong objectAtIndex:indexPath.row];
    mainCell.img_song.image = [UIImage imageNamed:[self.img_listSong objectAtIndex:indexPath.row]];
    mainCell.backgroundColor = [UIColor clearColor];
    return mainCell;
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
