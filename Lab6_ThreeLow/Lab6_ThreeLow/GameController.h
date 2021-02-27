//
//  GameController.h
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableDictionary *allPlayersDice;
@property NSMutableArray *currentPlayersDice;

- (instancetype)initWithAllPlayerDice: (NSMutableDictionary *) allPlayersDice AndCurrentPlayerDice: (NSMutableArray *) currentPlayerDice


@end

NS_ASSUME_NONNULL_END
