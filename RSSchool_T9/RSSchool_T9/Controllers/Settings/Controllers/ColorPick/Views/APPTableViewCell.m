//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPTableViewCell.h"
#import "RSSchool_T9-Swift.h"
@implementation APPTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        [self setBackgroundColor:UIColor.cellColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if (selected) {
        UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage systemImageNamed:@"checkmark"]];
        img.tintColor = UIColor.redColor;
        [self setAccessoryView:img];
        [self setBackgroundColor:UIColor.cellColor];
    } else {
        [self setAccessoryView:nil];
    }
    // Configure the view for the selected state
}


- (UIColor *)getCellTextColor{
    UIColor *col = self.textLabel.tintColor;
    
    return col;
}

- (NSString *)getCellColorString{
    NSString *str = self.textLabel.text;
    
    return str;
}
@end
