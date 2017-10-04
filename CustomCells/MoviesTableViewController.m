//
//  MoviesTableViewController.m
//  CustomCells
//
//  Created by supermacho on 03.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "MoviesTableViewController.h"
#import "Game.h"
#import "GameTableViewCell.h"
@interface MoviesTableViewController ()

@end

@implementation MoviesTableViewController
@synthesize arrayOfMovies;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrayOfMovies = [[NSMutableArray alloc]init];//[NSMutableArray arrayWithCapacity:5];
    
    Game* game = [[Game alloc]init];
    game.title = @"Doom";
    game.year = @"2016";
    game.poster = @"Doom.jpg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"GTA 5";
    game.year = @"2013";
    game.poster = @"GTA5.png";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"FIFA 17";
    game.year = @"2016";
    game.poster = @"FIFA17.jpg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"The Witcher";
    game.year = @"2015";
    game.poster = @"Witcher.jpeg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"Dishonored 2";
    game.year = @"2016";
    game.poster = @"dishonored2.jpg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"Deus Ex: Mankind Divided";
    game.year = @"2016";
    game.poster = @"DeusEx.jpg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"Watch Dogs 2";
    game.year = @"2016";
    game.poster = @"WD2.jpg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"Horizon Zero Dawn";
    game.year = @"2017";
    game.poster = @"Horizon.jpeg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"uncharted 4";
    game.year = @"2017";
    game.poster = @"uncharted.jpeg";
    [self.arrayOfMovies addObject:game];
    
    game = [[Game alloc]init];
    game.title = @"Mass Effect: Andromeda";
    game.year = @"2017";
    game.poster = @"MS4.jpeg";
    [self.arrayOfMovies addObject:game];

    
    //Mass Effect: Andromeda
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    
    return [arrayOfMovies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    static NSString* cellID = @"GameCell";
    
    GameTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[GameTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        NSLog(@"cell created");
    }else {
        NSLog(@"cell reused");
    }
    
    Game* game = (self.arrayOfMovies)[indexPath.row];
    cell.lblTitle.text = game.title;
    cell.lblYear.text = game.year;
    cell.imgPoster.image = [UIImage imageNamed:game.poster];
    //cell.layer.cornerRadius = 10;
    //cell.layer.borderColor = UIColor.blue.cgColor
    //cell.layer.borderWidth = 2;
    cell.imgPoster.layer.cornerRadius = 30;
    cell.imgPoster.layer.masksToBounds = YES;
    cell.imgPoster.layer.borderWidth = 0;
    cell.backgroundColor = [UIColor colorWithRed:225.0/255.0 green:254.0/255.0 blue:255.0/255.0 alpha:1.0];
    
    return cell;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
