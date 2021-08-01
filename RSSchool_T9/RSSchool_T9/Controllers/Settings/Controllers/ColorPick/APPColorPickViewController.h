//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "APPColorPickViewDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface APPColorPickViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) id<APPColorPickViewDelegate> delegate;
@property (nonnull) NSNumber *selectedColorID;
@end

NS_ASSUME_NONNULL_END
