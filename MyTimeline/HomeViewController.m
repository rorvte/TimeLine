//
//  HomeViewController.m
//  MyTimeline
//
//  Created by yolanda yuan on 15/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewModel.h"
#import "Config.h"
#import "HomeModel.h"
#import "HomeTableView.h"
#import "HomeTableViewCell.h"

@interface HomeViewController()
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *dataArr;
@property (nonatomic,strong) HomeTableView *homeTableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTitle:@"iOS timeline"];
    
    self.dataArr=[NSMutableArray array];
    
//    [self configNav];
    //布局View
    [self setUpView];
    //数据处理
    [self dataAccess];
}

//TODO nav setting Button

//- (void)configNav {
//    UIButton *settingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//}

- (void)setUpView {
    [self.view addSubview:self.homeTableView];
}

- (HomeTableView *)homeTableView {
    if(!_homeTableView){
        _homeTableView = [[HomeTableView alloc]initWithFrame:self.view.bounds];
        [_homeTableView setDelegate:self];
        [_homeTableView setDataSource:self];
        [_homeTableView setRowHeight:80.0];
    }
    return _homeTableView;
}

- (void)dataAccess{
    HomeViewModel *homeViewModel=[[HomeViewModel alloc]init];
    
    __WeakSelf__ wSelf=self;
    [homeViewModel handleDataWithSuccess:^(NSArray *arr) {
        
        [wSelf.dataArr removeAllObjects];
        [wSelf.dataArr addObjectsFromArray:arr];
        dispatch_async(dispatch_get_main_queue(), ^{
            [wSelf.homeTableView reloadData];
        });
        
    } failure:^(NSError *error) {
        NSLog(@"请求失败 error:%@",error.description);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIde = @"cellIde";
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIde];
    if(!cell) {
        cell = [[HomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIde];
    }
    
    [cell setData:self.dataArr[indexPath.row]];
    return cell;
}

@end
