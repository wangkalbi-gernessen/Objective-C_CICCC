//
//  InputController.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import "InputController.h"

@implementation InputController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *) treatUserInput: (NSString *) userInput {
    NSLog(@"%@", userInput);
    char game[10];
    char *startGame = fgets(game, 10, stdin);
    // convert char *result to NSString
    NSString *str1 = [NSString stringWithUTF8String: startGame];
    // remove all whitespaces of *str
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [str1 stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
}

@end
