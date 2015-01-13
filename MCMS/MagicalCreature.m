//
//  MythicalCreature.m
//  MCMS
//
//  Created by Matthew Bradshaw on 1/13/15.
//  Copyright (c) 2015 Matthew Bradshaw. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype) initWithName:(NSString *) name {
    self = [super init];
    self.name = name;
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"Magical Creature: %@", self.name];
}

@end
