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

#import "APPColorPickViewDelegate.h"

#import "APPTableCellOne.h"
#import "APPTableCellTwo.h"
#import "APPColors.h"

@interface APPSettingsTableViewController () <APPColorPickViewDelegate>

@property (nonnull, nonatomic) APPSettingsView *tableView;
@property (nonnull, nonatomic) APPTableCellOne *strokeCell;
@property (nonnull, nonatomic) APPTableCellTwo *colorPickCell;
@property (nonatomic) NSNumber *selectedColorID;

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
    [self.strokeCell.cellSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    
    int kDefaultColorID = 6;
    
    NSString *colorCode = APPColors.getColorsString[kDefaultColorID];
    UIColor *txtColor = APPColors.getColors[kDefaultColorID];
    
    self.colorPickCell.textLabel.text = @"Stroke color";
    self.colorPickCell.detailTextLabel.text = colorCode;
    self.colorPickCell.detailTextLabel.textColor = txtColor;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Settings";
    self.selectedColorID = @6;
    
    
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
    
    
    id result = self.strokeCell;
    
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
    vc.delegate = self;
    vc.selectedColorID = [NSNumber numberWithLong:self.selectedColorID.longValue];
    
    if (indexPath.row == kColorPickId) {
        
        
        [self.navigationController pushViewController:vc animated:YES];
    }
}

-(void)switchChanged:(UISwitch*)sender {
    BOOL state = [sender isOn];
    NSString *rez = state == YES ? @"YES" : @"NO";
    NSLog(rez);

}

- (void)didSelectColor:(APPTableViewCell *)cell indexPath:(NSIndexPath *)indexPath color:(UIColor *)color{
    self.selectedColorID = [NSNumber numberWithLong:indexPath.row];
    self.colorPickCell.detailTextLabel.text = cell.textLabel.text;
    self.colorPickCell.detailTextLabel.textColor = color;
}

@end
