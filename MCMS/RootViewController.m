//
//  ViewController.m
//  RootViewController.m
//  MCMS
//
//  Created by Matthew Bradshaw on 1/13/15.
//  Copyright (c) 2015 Matthew Bradshaw. All rights reserved.
//

#import "RootViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *creatureNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *creatureDetailsTextField;
@property NSString *currentCreatureName;
@property NSIndexPath *currentIndexPath;



@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MagicalCreature *mothra = [[MagicalCreature alloc] initWithName:@"Mothra"];
    MagicalCreature *barney = [[MagicalCreature alloc] initWithName:@"Barney"];
    MagicalCreature *donaldTrump = [[MagicalCreature alloc] initWithName:@"Donald Trump"];

    self.creatures = [[NSMutableArray alloc] initWithObjects:mothra, barney, donaldTrump, nil];

    NSLog(@"%@", self.creatures);


//    self.creatures = [[NSMutableArray alloc] initWithObjects:@"Superman", @"Batman", @"Spiderman", nil];

}
#pragma mark Actions
- (IBAction)onAddButtonPressed:(UIButton *)sender {
    NSLog(@"self.creatureNameTextField.text %@",self.creatureNameTextField.text);

    MagicalCreature *magicalCreature = [[MagicalCreature alloc] initWithName:self.creatureNameTextField.text];

    [self.creatures addObject:magicalCreature];
    [self.tableView reloadData];

    self.creatureNameTextField.text = @"";
    self.creatureDetailsTextField.text = @"";
//    NSLog(@"self.creatureNameTextField.text %@",self.creatureNameTextField.text);

    }

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSLog(@"Iself.tableView.indexPathForSelectedRow PFS %ld", (long)self.tableView.indexPathForSelectedRow);

    NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
    CreatureViewController *detailVC = segue.destinationViewController;
    MagicalCreature *creatureTapped = [self.creatures objectAtIndex:selectedIndexPath.row];
    detailVC.creature = creatureTapped;

    //detailVC.title = [self.creatures objectAtIndex:self.currentIndexPath.row];

}


#pragma mark TableView Activities
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
   NSLog(@"IPR CRAIP %ld", (long)indexPath.row);

   cell.textLabel.text = creature.name;
//Nice try matt, wrong name
    //    self.currentCreatureName = cell.textLabel.text;

    return cell;
}

@end
