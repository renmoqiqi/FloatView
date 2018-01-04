//
//  ListTableViewController.m
//  FloatButton
//
//  Created by penghe on 2018/1/3.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "ListTableViewController.h"

#import "ListTableViewCell.h"

@interface ListTableViewController ()
//float button
@property (strong, nonatomic) UIButton *floatButton;



@end

static NSString *const ListTableViewCellIndentifier = @"ListTableViewCellIndentifier";

@implementation ListTableViewController


- (UIButton *)floatButton
{
    if (_floatButton == nil)
    {
        _floatButton = [[UIButton alloc] init];
        _floatButton.backgroundColor = [UIColor redColor];
        [_floatButton setTitle:@"button2" forState:UIControlStateNormal];
        
    }
    return _floatButton;
}



- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupViews];

    
}

- (void)setupViews
{
    self.floatButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.floatButton];
    
    NSLayoutConstraint *widthConstraint = [self.floatButton.widthAnchor constraintEqualToConstant:100];
    NSLayoutConstraint *heightConstraint =  [self.floatButton.heightAnchor constraintEqualToConstant:50];
    
    NSLayoutConstraint *rightConstraint = [self.floatButton.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor constant:-50];
    NSLayoutConstraint *bottomConstraint = [self.floatButton.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-50];
    
    rightConstraint.active = YES;
    bottomConstraint.active = YES;
    widthConstraint.active = YES;
    heightConstraint.active = YES;
    

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ListTableViewCellIndentifier forIndexPath:indexPath];
    
    
    return cell;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //config frame
}
@end

