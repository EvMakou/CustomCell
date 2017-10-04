//
//  MoviesTableViewController.h
//  CustomCells
//
//  Created by supermacho on 03.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesTableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, strong) NSMutableArray* arrayOfMovies;





@end
