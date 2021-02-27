//
//  Dice.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (int) randomizeDice {
    // set 1 to 6
_currentValue = arc4random_uniform(6) + 1;
    return _currentValue;
}

@end
