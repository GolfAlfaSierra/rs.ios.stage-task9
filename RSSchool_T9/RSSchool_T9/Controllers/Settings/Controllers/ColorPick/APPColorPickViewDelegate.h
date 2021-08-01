//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <Foundation/Foundation.h>
#import "APPTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@protocol APPColorPickViewDelegate <NSObject>
-(void)didSelectColor:(APPTableViewCell*)cell indexPath:(NSIndexPath*)indexPath color:(UIColor*)color;
@end

NS_ASSUME_NONNULL_END
