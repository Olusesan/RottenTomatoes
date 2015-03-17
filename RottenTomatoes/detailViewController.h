//
//  detailViewController.h
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 3/2/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import <UIKit/UIKit.h>
//#include "movie.h"
#import "tableview.h"
#import "UIImageView+AFNetworking.h"

@interface detailViewController : UIViewController
@property (nonatomic, strong) NSDictionary *moviedetail;
@property (weak, nonatomic) IBOutlet UILabel *ratings;
@property (weak, nonatomic) IBOutlet UILabel *movietitle;
@property (weak, nonatomic) IBOutlet UIImageView *biggerposter;
@property (weak, nonatomic) IBOutlet UILabel *synopsiz;
@property (weak, nonatomic) IBOutlet UILabel *runtime;


@property (weak, nonatomic) IBOutlet UILabel *cast;

//@property (weak, nonatomic) IBOutlet UIImageView *biggerposter;
//@property (strong, nonatomic) movie *MovieDetail;
@end
