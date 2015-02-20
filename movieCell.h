//
//  movieCell.h
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 2/18/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface movieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
