//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPTableCellOne.h"

@interface APPTableCellOne ()

@property (nonnull,nonatomic) UISwitch *cellSwitch;

@end

@implementation APPTableCellOne

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        
        _cellLabel  = [[UILabel alloc] init];
        _cellSwitch = [[UISwitch alloc] init];
        
        
        [self.contentView addSubview:self.cellLabel];
        [self.contentView addSubview:self.cellSwitch];
        
        [self.cellLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        
        
        [NSLayoutConstraint activateConstraints:@[
            [self.cellLabel.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor],
            [self.cellLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:20],
            [self.cellLabel.widthAnchor constraintEqualToConstant:240]
        ]];
        
        [self.cellSwitch setTranslatesAutoresizingMaskIntoConstraints:NO];
        [NSLayoutConstraint activateConstraints:@[
            [self.cellSwitch.leadingAnchor constraintEqualToAnchor:self.cellLabel.trailingAnchor constant:33],
            [self.cellSwitch.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor]
        ]];
        
    }
    
    
    return self;
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:NO animated:animated];
    // Configure the view for the selected state
}

- (BOOL)isHighlighted{
    return NO;
}

@end