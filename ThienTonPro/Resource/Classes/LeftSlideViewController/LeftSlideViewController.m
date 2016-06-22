//
//  LeftSlideViewController.m
//  ThienTonPro
//
//  Created by tin vu on 6/21/16.
//  Copyright © 2016 vuvantiep. All rights reserved.
//

#import "LeftSlideViewController.h"
#import "MFSideMenu.h"
#import "HeaderLeftCell.h"
#import "CustomLeftMenu.h"
#import "MainViewController.h"
#import "VideoViewController.h"

@interface LeftSlideViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *leftSideTableView;

@property (strong, nonatomic) NSMutableArray *left_img_arr;
@property (strong, nonatomic) NSMutableArray *left_lb_arr;

@property (nonatomic, assign) NSInteger padding;
@property (nonatomic, assign) NSInteger hRow;

@end

@implementation LeftSlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //assign height header leftmenu.
    self.padding = 85;
    
    //assign height row
    self.hRow = 50;
    
    self.left_lb_arr = [NSMutableArray arrayWithObjects:@"Thiên Tôn Pro", @"Video Cá Nhân", nil];
    
    self.leftSideTableView.delegate = self;
    self.leftSideTableView.dataSource = self;
    self.leftSideTableView.scrollEnabled = NO;
    
}

//customize header tableview
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    HeaderLeftCell *header = (HeaderLeftCell *)[tableView dequeueReusableCellWithIdentifier:@"headerleftCell"];
    return header;
}

//customize footer tableview
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor whiteColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    CGFloat hFooter = [UIScreen mainScreen].bounds.size.height - self.padding - (self.hRow*self.left_lb_arr.count);
    return hFooter;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.padding;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.left_lb_arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomLeftMenu *cell = (CustomLeftMenu *)[tableView dequeueReusableCellWithIdentifier:@"leftCell"];
    cell.lb_leftslide.text = [self.left_lb_arr objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        MainViewController *main = [story instantiateViewControllerWithIdentifier:@"MainViewController"];
        [self.menuContainerViewController setCenterViewController:main];
    } else if (indexPath.row == 1) {
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Video" bundle:[NSBundle mainBundle]];
        VideoViewController *video = [story instantiateViewControllerWithIdentifier:@"VideoViewController"];
        [self.menuContainerViewController setCenterViewController:video];
    }
    [self.menuContainerViewController setMenuState:MFSideMenuStateClosed completion:^{}];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.hRow;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
