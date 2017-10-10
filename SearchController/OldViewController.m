//
//  OldViewController.m
//  SearchController
//
//  Created by doohanTech on 2017/10/10.
//  Copyright © 2017年 CaiJie. All rights reserved.
//

#import "OldViewController.h"
#import "SearchViewController.h"

@interface OldViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UISearchController   *searchController;
@property (nonatomic, strong) UITableView   *tableView;

@end

@implementation OldViewController
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
    
}

- (void)initUI{
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.tableView.tableHeaderView.backgroundColor = [UIColor whiteColor];
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
#pragma mark --- event response
#pragma mark --- private methods
#pragma mark --- gerter and setters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_Id];
    
    }
    return _tableView;
}

- (UISearchController *)searchController {
    if (!_searchController) {
        SearchViewController *searchVC = [[SearchViewController alloc] init];
        _searchController = [[UISearchController alloc] initWithSearchResultsController:searchVC];
         _searchController.obscuresBackgroundDuringPresentation = YES; // 这个属性设置了貌似没什么用，但是dimsBackgroundDuringPresentation之后设置为NO后，dimsBackgroundDuringPresentation失效。
        _searchController.dimsBackgroundDuringPresentation = YES;  // 正在搜索时，灰色的背景，点击可取消搜索。
        /*
        _searchController.searchBar.tintColor = [UIColor whiteColor]; // searchBar的背景色和光标色
        _searchController.searchBar.backgroundImage = [UIImage new]; // searchBar的上下分割线
         */
    }
    return _searchController;
}

@end
