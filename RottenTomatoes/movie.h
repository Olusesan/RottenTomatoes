//
//  movie.h
//  RottenTomatoes
//
//  Created by Olusesan Ajina on 3/3/15.
//  Copyright (c) 2015 Olusesan Ajina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movie : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *cast;
@property (nonatomic, strong) NSString *ratings;
@property (nonatomic, strong) NSString *imageURL;
@end
