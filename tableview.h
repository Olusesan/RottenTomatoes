//
//  tableview.h
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 2/18/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "movieCell.h"
#import "detailViewController.h"

@interface tableview : UITableViewController

@property (nonatomic, strong) NSArray *Movies;
@property (assign) NSInteger currentTableRow;

@end
