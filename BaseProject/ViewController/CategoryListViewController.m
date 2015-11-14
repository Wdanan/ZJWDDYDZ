//
//  CategoryListViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "CategoryListViewController.h"
#import "RankingListModel.h"
#import "CategoryCell.h"
#import "XiMaCategoryViewModel.h"
#import "MusicListViewController.h"
@interface CategoryListViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)XiMaCategoryViewModel *ximaVM;

@end

@implementation CategoryListViewController

- (XiMaCategoryViewModel *)ximaVM {
    if(_ximaVM == nil) {
        _ximaVM = [[XiMaCategoryViewModel alloc] init];
    }
    return _ximaVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"儿童乐园";
    self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.ximaVM refreshDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error];
            }else{
                [self.tableView reloadData];
                //   重置脚步 没有更多数据
                [_tableView.footer resetNoMoreData];
            }
            [_tableView.header endRefreshing];
        }];
    }];
    self.tableView.footer=[MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        [self.ximaVM getMoreDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error.localizedDescription];
            }else{
                [self.tableView reloadData];
                if ([self.ximaVM isHasMore]) {
                    [_tableView.footer endRefreshing];
                }else{
                    [_tableView.footer endRefreshingWithNoMoreData];
                }
            }
        }];
    }];
    [self.tableView.header beginRefreshing];

}

#pragma mark - UITableView
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.ximaVM.rowNumber;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.titleLb.text = [self.ximaVM titleForRow:indexPath.row];
    [cell.iconIV setImageWithURL:[self.ximaVM iconURLForRow:indexPath.row] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_1"]];
    cell.descLb.text = [self.ximaVM descForRow:indexPath.row];
    cell.descLb.font = [UIFont systemFontOfSize:15];
    cell.numberLb.text = [self.ximaVM numberForRow:indexPath.row];
    cell.numberLb.font = [UIFont systemFontOfSize:13];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MusicListViewController *vc =[[MusicListViewController alloc] initWithAlbumId:[self.ximaVM albumIdForRow:indexPath.row]];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
