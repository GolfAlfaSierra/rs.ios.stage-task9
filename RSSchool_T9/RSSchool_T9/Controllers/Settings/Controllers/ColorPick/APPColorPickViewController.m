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

@interface APPColorPickViewController ()
@property (nonatomic, nonnull) APPColorPickView *tableView;
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
//    [self.tableView setScrollEnabled:NO];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureTableView];
    
    [self.view addSubview:self.tableView];
    [self makeConstraints];
    
    self.navigationController.navigationBar.tintColor = UIColor.redColor;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"kek";
    
    return cell;
}

@end
