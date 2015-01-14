//
//  CreatureViewController.m
//  MCMS
//
//  Created by Matthew Bradshaw on 1/13/15.
//  Copyright (c) 2015 Matthew Bradshaw. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property NSString *creatureNameToPass;
@property (strong, nonatomic) IBOutlet UILabel *myNameLabel;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myNameLabel.text = self.creature.name;


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
