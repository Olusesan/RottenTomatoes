//
//  tableview.m
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 2/18/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import "tableview.h"

@interface tableview ()

@end

@implementation tableview

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *url = @"http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=ws32mxpd653h5c8zqfvksxw9";
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (response !=nil) {
            
            id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            self.Movies = object[@"movies"];
            [self.tableView reloadData];
            NSLog(@"%@", object);
            
        }
        else {
            self.title = @"No Fucking data";
            NSLog(@"No data");
        }
    }];
    
    
             
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.Movies.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Number of Movies = %lu", (unsigned long)self.Movies.count);
    
    // Configure the cell...
    //UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil
    
    movieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyMovieCell"];
    
    NSDictionary *movie = self.Movies[indexPath.row];
    
    cell.movieTitleLabel.text = movie[@"title"];
    
    cell.synopsisLabel.text = movie[@"synopsis"];
    
    NSDictionary *posters = movie[@"posters"];
    NSString *posterUrlString = posters[@"detailed"];
    [cell.posterView setImageWithURL:[NSURL URLWithString:posterUrlString]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"hello");
    self.currentTableRow=indexPath.row;
//    [self performSegueWithIdentifier:@"showdetail" sender:self];
//        [self performSegueWithIdentifier:@"mike" sender:self];
        [self performSegueWithIdentifier:@"mike" sender:self];

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


#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
//    NSLog(@"hello #2");
    if ( [[segue identifier] isEqualToString:@"mike"]) {
        NSDictionary *movie = self.Movies[self.currentTableRow];
        detailViewController *controller = (detailViewController *)segue.destinationViewController;
        controller.moviedetail = movie;
//        controller.ratings.text = movie[@"title"];
        
    }
}


@end
