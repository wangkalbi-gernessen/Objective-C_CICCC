//
//  GameController.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithAllPlayerDice: (NSMutableDictionary *) allPlayersDice AndCurrentPlayerDice: (NSMutableArray *) currentPlayerDice
{
    self = [super init];
    if (self) {
        _allPlayersDice = allPlayersDice;
        _currentPlayersDice = currentPlayerDice;
    }
    return self;
}

@end
