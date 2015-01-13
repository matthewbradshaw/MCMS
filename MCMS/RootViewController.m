//
//  ViewController.m
//  MCMS
//
//  Created by Matthew Bradshaw on 1/13/15.
//  Copyright (c) 2015 Matthew Bradshaw. All rights reserved.
//

#import "RootViewController.h"
#import "MagicalCreature.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.creatures = [[NSMutableArray alloc] initWithObjects:@"Superman", @"Batman", @"Spiderman", nil];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    return nil;
}

@end
