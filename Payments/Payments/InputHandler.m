//
//  InputHandler.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) treatUserInput: (NSString *) userInput {
    NSLog(@"%@",userInput);
    char menu[256];
    char *menuInput = fgets(menu, 256, stdin);
    // convert char *result to NSString
    NSString *menuList = [NSString stringWithUTF8String: menu];
    // remove all whitespaces of *str
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [menuList stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
}

@end
