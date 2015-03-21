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
//    self.view.backgroundColor=[UIColor grayColor];
   NSLog(@"%@", self.moviedetail);
//    NSString *movieratings = self.moviedetail[@"mpaa_rating"];
//    NSString *title = self.moviedetail[@"title"];
    
//    NSDictionary *runtimez = self.moviedetail;
//    NSString *runtimex = runtimez[@"runtime"];
//    self.runtime.text = runtimex;
//    MovieDictionary *movieDictionary = [[MovieDictionary alloc] init];
    
    
    NSArray *castarray = self.moviedetail[@"abridged_cast"];
    NSArray *names = [castarray valueForKey:@"name"];
    self.cast.text = [names componentsJoinedByString:@","];
    
    self.ratings.text= self.moviedetail[@"mpaa_rating"];
    self.movietitle.text = self.moviedetail[@"title"];
    self.synopsiz.text = self.moviedetail[@"synopsis"];
    NSDictionary *moviez = self.moviedetail;
    NSDictionary *posterz = moviez [@"posters"];
    NSString *posterzurlstring = posterz [@"profile"];
    [self.biggerposter setImageWithURL:[NSURL URLWithString:posterzurlstring]];
    
    NSNumber *runtimeNumber = self.moviedetail[@"runtime"];
    self.runtime.text = [NSString stringWithFormat:@"%li Minutes",(long)[runtimeNumber integerValue]];

//    NSDictionary *abrigded_cast = self.moviedetail[@"abridged_cast"];
//    NSDictionary* castname = abrigded_cast [@"name"];
//    self.cast.text = castname [@"name"];
    
//    self.cast = [castArray componentsJoinedByString:@","];
    
    
    
    
    
    
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
