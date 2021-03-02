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
    NSLog(@"--  Current Dice  --");
    for (int i = 0; i < [currentDices count]; i++) {
        BOOL isFound = NO;
        for (int j = 0; j < [_heldDices count]; j++) {
            if ([NSNumber numberWithInt:i] == _heldDices[j]) {
                isFound = YES;
                stats = [stats stringByAppendingFormat:@" [%@] ", currentDices[i]];
            }
        }
        if (isFound == NO) {
            stats = [stats stringByAppendingFormat:@" %@ ", currentDices[i]];
        }
    }
    NSLog(@"%@",stats);
    NSLog(@"--  Total Score  --");
    NSLog(@"Score: %d", _score);
    NSLog(@"-------------------");
}

- (int) changeToIntValue: (NSString *) oneDice {
    
    if ([oneDice isEqualToString:@"\u2680"]) {
        _diceVal = 1;
    } else if ([oneDice isEqualToString:@"\u2681"]) {
        _diceVal = 2;
    } else if ([oneDice isEqualToString:@"\u2682"]) {
        _diceVal = 3;
    } else if ([oneDice isEqualToString:@"\u2683"]) {
        _diceVal = 4;
    } else if ([oneDice isEqualToString:@"\u2684"]) {
        _diceVal = 5;
    } else {
        _diceVal = 6;
    }
    return _diceVal;
}

- (void) holdDie: (int) holdIndex heldDices: (NSMutableArray *) heldDices {
    if (holdIndex >= 1 && holdIndex <= 5) {
        NSNumber *index = [NSNumber numberWithInt:holdIndex - 1];
        [heldDices addObject: index];
        _score += [self changeToIntValue: _currentDices[holdIndex - 1]];
    } else {
        NSLog(@"The index number is not found");
    }
}

@end
