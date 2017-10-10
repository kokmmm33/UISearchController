//
//  NewFutureViewController.m
//  SearchController
//
//  Created by doohanTech on 2017/10/10.
//  Copyright © 2017年 CaiJie. All rights reserved.
//

#import "NewFutureViewController.h"

@interface NewFutureViewController ()<UITableViewDelegate, UITableViewDataSource, UISearchControllerDelegate, UISearchResultsUpdating>

@property (nonatomic, strong) UISearchController   *searchController;
@property (nonatomic, strong) UITableView   *tableView;

@end

@implementation NewFutureViewController
#define CELL_Id   @"cellid"

#pragma mark --- life cycle And init
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    [self initUI];
    [self loadData];
    
}

- (void)initController{
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.prefersLargeTitles = YES;
//    self.navigationItem.largeTitleDisplayMode= UINavigationItemLargeTitleDisplayModeAutomatic;
    self.navigationItem.searchController = self.searchController;
}

- (void)initUI{
    [self.view addSubview:self.tableView];
    
}

- (void)loadData{
    
    
}
#pragma mark --- tableViewDelegate And Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_Id forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%zi", indexPath.row];
    return cell;
}

#pragma mark --- OtherDelegate
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
    
}

#pragma mark --- event response
#pragma mark --- private methods
#pragma mark --- gerter and setters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_Id];
    }
    return _tableView;
}

- (UISearchController *)searchController {
    if (!_searchController) {
        _searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
        _searchController.delegate = self;
        _searchController.searchResultsUpdater = self;
        
    }
    return _searchController;
}

@end

