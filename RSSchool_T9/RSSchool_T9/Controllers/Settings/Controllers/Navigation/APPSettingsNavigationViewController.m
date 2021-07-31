//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPSettingsNavigationViewController.h"
#import "APPSettingsTableViewController.h"

@interface APPSettingsNavigationViewController ()
@property (nonnull,nonatomic) APPSettingsTableViewController *settingsTable;
@end

@implementation APPSettingsNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.settingsTable = [[APPSettingsTableViewController alloc] init];
    
    self.viewControllers = @[self.settingsTable];
    
//    self.navigationBar.backItem = [[UIBarButtonItem alloc] init];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
