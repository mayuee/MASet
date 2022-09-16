//
//  ViewController.m
//  MASet
//
//  Created by mazb on 2022/9/16.
//

#import "ViewController.h"
#import "MAProxyController.h"

#import <MACats/MACats.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSMutableArray *dataArray;
@property(nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 50)];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor yellowColor];
    button.frame = CGRectMake(100, 0, 50, 50);
    button.clickBlock = ^(UIButton * _Nonnull button) {
        NSLog(@"UIButton clickBlock");
    };
    [headerView addSubview:button];
    
    
    MABlockButton *blockButton = [[MABlockButton alloc] initWithBlock:^(UIButton * _Nonnull button) {
        NSLog(@"MABlockButton clickBlock");
    }];
    blockButton.backgroundColor = [UIColor redColor];
    blockButton.frame = CGRectMake(200, 0, 50, 50);
    [headerView addSubview:blockButton];
    
    tableView.tableHeaderView = headerView;
    
    tableView.delegate = self;
    tableView.dataSource = self;
    self.tableView = tableView;
    
    [self.view addSubview:self.tableView];
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        NSArray *array = @[@{@"title":@"MAProxy", @"className":@"MAProxyController"}];
        _dataArray = array.mutableCopy;
    }
    return _dataArray;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *idf = @"UITableViewCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idf];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:idf];
    }
    NSDictionary *dict = [self.dataArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [dict valueForKey:@"title"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *dict = [self.dataArray objectAtIndex:indexPath.row];
    NSString *className = [dict valueForKey:@"className"];
    Class class = NSClassFromString(className);
    
    MAProxyController *controller = [MAProxyController new];
    [self.navigationController pushViewController:controller animated:YES];
    return;
    if (class && [class isKindOfClass:[UIViewController class]]) {
        UIViewController *controller = [class new];
        [self.navigationController pushViewController:controller animated:YES];
    }
}






@end
