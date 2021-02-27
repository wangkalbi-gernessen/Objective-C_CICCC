//
//  main.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputController.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(YES) {
            NSLog(@"\nPlease enter 1 to start Three low game: ");
            char game[3];
            char *startGame = fgets(game, 3, stdin);
            // convert char *result to NSString
            NSString *str1 = [NSString stringWithUTF8String: startGame];
            // remove all whitespaces of *str
            NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedInput = [str1 stringByTrimmingCharactersInSet: whitespaces];
            BOOL runOn = NO;
            if (trimmedInput.intValue == 1) {
                
                NSMutableDictionary *allPlayersDice = [NSMutableDictionary new];
                NSMutableArray *currentPlayerDice = [NSMutableArray new];
                GameController *gameCT = [[GameController alloc] initWithAllPlayerDice: allPlayersDice AndCurrentPlayerDice: currentPlayerDice];
                runOn = YES;
                while(YES) {
                    InputController *inputCT = [[InputController alloc] init];
                    NSString *rollInput = [inputCT treatUserInput: @"\nEnter roll: "];
                    if ([rollInput isEqualToString:@"roll"]) {
                        Dice *dice = [[Dice alloc] init];
                        int diceVal = [dice randomizeDice];
                        
                    } else {
                        NSLog(@"no");
                    }
                }
            } else {
                continue;
            }
        }
    }
    return 0;
}
