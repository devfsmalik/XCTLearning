//
//  ViewController.m
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"
@interface ViewController ()


@end

@implementation ViewController
#pragma mark - View loading methods
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"XCTest Learning";
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Memory warning methods
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView delegate methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *reuseId = [NSString stringWithFormat:@"%ld/%ld",(long)indexPath.section,(long)indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if(!cell)
    {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
        
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row %ld", (long)indexPath.row+1];
    
    return cell;
}







@end
