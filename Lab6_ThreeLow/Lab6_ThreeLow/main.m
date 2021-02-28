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
            NSString *str1 = [NSString stringWithUTF8String: game];
            // remove all whitespaces of *str
            NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedInput = [str1 stringByTrimmingCharactersInSet: whitespaces];
            BOOL runOn = NO;
            if (trimmedInput.intValue == 1) {
                NSMutableArray *currentDices = [NSMutableArray new];
                NSMutableArray *heldDices = [NSMutableArray new];
                GameController *gameCT = [[GameController alloc] initWithCurrentDices:currentDices AndHeldDices:heldDices];
                runOn = YES;
                int rollCount = 5;
                while(rollCount > 0) {
                    InputController *inputCT = [[InputController alloc] init];
                    NSString *rollInput = [inputCT treatUserInput: @"\n'roll' - to roll the dice\n'hold' - to hold the dice\n'reset' - to un-hold all dice\n'done' - to end the game\n'display' - to show current stats"];
                    
                    if ([rollInput isEqualToString:@"roll"]) {
                        Dice *dice = [[Dice alloc] init];
                        if (rollCount == 5) {
                            NSString *first = [dice randomizeDice];
                            [currentDices addObject:first];
                            NSString *second = [dice randomizeDice];
                            [currentDices addObject:second];
                            NSString *third = [dice randomizeDice];
                            [currentDices addObject:third];
                            NSString *fourth = [dice randomizeDice];
                            [currentDices addObject:fourth];
                            NSString *fifth = [dice randomizeDice];
                            [currentDices addObject:fifth];
                            NSLog(@"%ld", [currentDices count]);
                            
                        
                            rollCount--;
                            [gameCT displayCurrentStats:currentDices rollCounts:rollCount];
                        } else {
                            for (int i = 0; i < [currentDices count]; i++) {
                                // is goint to add 'held' if statement
                                [currentDices replaceObjectAtIndex:i withObject:[dice randomizeDice]];
                            }
                            rollCount--;
                            [gameCT displayCurrentStats:currentDices rollCounts:rollCount];
                        }
                    } else if ([rollInput isEqualToString:@"hold"]) {
                        NSString *holdDice = [inputCT treatUserInput:@"Enter the number of the die: "];
                        int heldIndex = holdDice.intValue;
//                        currentDices[heldIndex - 1];
                        [gameCT holdDie:heldIndex currentDices:currentDices heldDices:heldDices];
//                        NSLog(@"%d", [heldDices count]);
                        [gameCT displayCurrentStats:currentDices rollCounts:rollCount];
                        
                        
                    } else if ([rollInput isEqualToString:@"reset"]) {
//                        NSLog(@"reset");
                        [currentDices removeAllObjects];
                        [heldDices removeAllObjects];
                        
                    } else if ([rollInput isEqualToString:@"done"]) {
                        NSLog(@" GAME OVER ");
                        runOn = NO;
                        break;
                    } else if ([rollInput isEqualToString:@"display"]) {
//                        NSLog(@"display");
                        [gameCT displayCurrentStats:currentDices rollCounts:rollCount];
                    } else {
                        NSLog(@"Please select one out of displayed menu.");
                        continue;
                    }
                }
            } else {
                continue;
            }
        }
    }
    return 0;
}
