//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 30.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPColorPickViewController.h"
#import "APPColorPickView.h"
#import "APPTableViewCell.h"
#import "RSSchool_T9-Swift.h"
#import "APPColors.h"

@interface APPColorPickViewController ()
@property (nonatomic, nonnull) APPColorPickView *tableView;
@property (nonnull,nonatomic) NSArray<UIColor*> *colors;
@property (nonnull,nonatomic) NSArray<NSString*> *colorsStrings;

@end

@implementation APPColorPickViewController


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
    self.tableView = [[APPColorPickView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.tableView setAlwaysBounceVertical:NO];
    
    [self.tableView registerClass:APPTableViewCell.class forCellReuseIdentifier:@"cell"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colors = APPColors.getColors;
    self.colorsStrings = APPColors.getColorsString;
    
    [self configureTableView];
    
    [self.view addSubview:self.tableView];
    [self makeConstraints];
    
    self.navigationController.navigationBar.tintColor = UIColor.redColor;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colorsStrings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    APPTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.colorsStrings[indexPath.row];
    cell.textLabel.textColor = self.colors[indexPath.row];
    
    return cell;
}

@end
