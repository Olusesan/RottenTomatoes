//
//  detailViewController.h
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 3/2/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "movie.h"
#import "tableview.h"

@interface detailViewController : UIViewController
@property (nonatomic, strong) NSDictionary *moviedetail;
@property (weak, nonatomic) IBOutlet UILabel *ratings;

//@property (weak, nonatomic) IBOutlet UIImageView *biggerposter;
//@property (strong, nonatomic) movie *MovieDetail;
@end
