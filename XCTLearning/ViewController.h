//
//  ViewController.h
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

