//
//  ViewController.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "ViewController.h"
#import "StatesProvider.h"
#import "State.h"
#import "Location.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation ViewController

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[StatesProvider sharedInstance].states count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    State *state = [[StatesProvider sharedInstance].states objectAtIndex:indexPath.row];
    cell.textLabel.text = state.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)state.locations.count];
    return cell;
}

@end
