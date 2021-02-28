//
//  GameController.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithCurrentDices: (NSMutableArray *) currentDices AndHeldDices: (NSMutableArray *) heldDices
{
    self = [super init];
    if (self) {
        _currentDices = currentDices;
        _heldDices = heldDices;
    }
    return self;
}

- (void) displayCurrentStats: (NSMutableArray *) currentDices rollCounts: (int) rollCount {
    NSString *stats = @"";
    
    NSLog(@"Remaining Rolls: %d", rollCount);
    NSLog(@"-------------------");
    NSLog(@"--  Current Dice --");
    for (int i = 0; i < [currentDices count]; i++) {
        stats = [NSString stringWithFormat:@" %@ ", currentDices[i]];
    }
    NSLog(@"%@",stats);
    NSLog(@"-------------------");
}

- (void) holdDie: (int) holdIndex currentDices: (NSMutableArray *) currentDice heldDices: (NSMutableArray *) heldDices {
    if (holdIndex >= 1 && holdIndex <= 6) {
        [heldDices addObject:currentDice[holdIndex - 1]];
        
    } else {
        NSLog(@"The index number is not found");
    }
}

@end
