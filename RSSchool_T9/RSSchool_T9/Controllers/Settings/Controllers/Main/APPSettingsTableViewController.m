//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPSettingsTableViewController.h"
#import "APPSettingsView.h"

#import "APPColorPickViewController.h"


#import "APPTableCellOne.h"
#import "APPTableCellTwo.h"

@interface APPSettingsTableViewController ()

@property (nonnull, nonatomic) APPSettingsView *tableView;
@property (nonnull, nonatomic) APPTableCellOne *strokeCell;
@property (nonnull, nonatomic) APPTableCellTwo *colorPickCell;

@end

@implementation APPSettingsTableViewController

- (void)makeConstraints {
    [self.tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [NSLayoutConstraint activateConstraints:@[
        [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
        
    ]];
}

- (void)configureTableView {
    self.tableView = [[APPSettingsView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.tableView setScrollEnabled:NO];
    
    
}

-(void)configureCells{
    self.strokeCell.cellLabel.text = @"Draw stories";
    
    self.colorPickCell.textLabel.text = @"Stroke color";
    self.colorPickCell.detailTextLabel.text = @"#999999";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Settings";
    
    
    [self configureTableView];
    
    
    [self.view addSubview:self.tableView];
    [self makeConstraints];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 52;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.strokeCell = [[APPTableCellOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    self.colorPickCell = [[APPTableCellTwo alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    [self configureCells];
    
    
    id result = nil;
    
    switch (indexPath.row) {
        case 0:
            result = self.strokeCell;
            break;
        case 1:
            result = self.colorPickCell;
            break;
    }
    
    return result;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    const int kColorPickId = 1;
    
    APPColorPickViewController *vc = [[APPColorPickViewController alloc] init];
    
    
    if (indexPath.row == kColorPickId) {
        
        
        [self.navigationController pushViewController:vc animated:YES];
    }
}


@end
