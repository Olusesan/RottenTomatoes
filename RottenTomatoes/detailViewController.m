//
//  detailViewController.m
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 3/2/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()


@end

@implementation detailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor purpleColor];
   NSLog(@"%@", self.moviedetail);
    NSString *movieratings = self.moviedetail[@"mpaa_rating"];
    NSString *title = self.moviedetail[@"title"];
    
    self.ratings.text= self.moviedetail[@"mpaa_rating"];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
