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


    }
    return _floatButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.floatButton.translatesAutoresizingMaskIntoConstraints = NO;

    [self.view addSubview:self.floatButton];
    
    NSLayoutConstraint *widthConstraint = [self.floatButton.widthAnchor constraintEqualToConstant:50];
    NSLayoutConstraint *heightConstraint =  [self.floatButton.heightAnchor constraintEqualToConstant:50];
    
    NSLayoutConstraint *rightConstraint = [self.floatButton.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor constant:10];
    NSLayoutConstraint *bottomConstraint = [self.floatButton.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:10];

    rightConstraint.active = YES;
    bottomConstraint.active = YES;
    widthConstraint.active = YES;
    heightConstraint.active = YES;
    

//    self.floatButton.bottomAnchor.constraint(equalTo: tableView.layoutMarginsGuide.bottomAnchor, constant: -10).isActive = true
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
}
@end
