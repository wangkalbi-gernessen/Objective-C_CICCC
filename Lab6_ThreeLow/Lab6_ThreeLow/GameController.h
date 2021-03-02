//
//  GameController.h
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray *currentDices; // may change NSMutableDictionary [held or not: dice val]
@property NSMutableArray *heldDices;
@property int score;
@property int diceVal;


- (instancetype)initWithCurrentDices: (NSMutableArray *) currentDices AndHeldDices: (NSMutableArray *) heldDices;
- (void) displayCurrentStats: (NSMutableArray *) currentDicesStats rollCounts: (int) rollCount;
- (int) changeToIntValue: (NSString *) oneDice;
- (void) holdDie: (int) holdIndex heldDices: (NSMutableArray *) heldDices;

@end

NS_ASSUME_NONNULL_END
