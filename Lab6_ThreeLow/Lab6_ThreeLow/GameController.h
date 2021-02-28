//
//  GameController.h
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray *currentDices;
@property NSMutableArray *heldDices;

- (instancetype)initWithCurrentDices: (NSMutableArray *) currentDices AndHeldDices: (NSMutableArray *) heldDices;
- (void) displayCurrentStats: (NSMutableArray *) currentDicesStats rollCounts: (int) rollCount;
- (void) holdDie: (int) holdIndex currentDices: (NSMutableArray *) currentDice heldDices: (NSMutableArray *) heldDices;

@end

NS_ASSUME_NONNULL_END
