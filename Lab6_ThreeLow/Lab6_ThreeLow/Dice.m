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

- (NSString *) randomizeDice {
    // set 1 to 6
    _currentValue = arc4random_uniform(6) + 1;
    NSString *die;
    switch (_currentValue) {
        case 1:
            die = @"\u2680";
            break;
        case 2:
            die = @"\u2681";
            break;
        case 3:
            die = @"\u2682";
            break;
        case 4:
            die = @"\u2683";
            break;
        case 5:
            die = @"\u2684";
            break;
        case 6:
            die = @"\u2685";
            break;
    }
    return die;
}

@end
