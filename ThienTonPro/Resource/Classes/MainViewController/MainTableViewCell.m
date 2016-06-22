//
//  MainTableViewCell.m
//  ThienTonPro
//
//  Created by tin vu on 6/22/16.
//  Copyright © 2016 vuvantiep. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.img_song.layer.cornerRadius = self.img_song.frame.size.height/2;
    self.img_song.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
