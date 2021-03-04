//
//  InputHandler.m
//  Lab5
//
//  Created by Kazunobu Someya on 2021-02-28.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) inputHandler: (NSString *) input {
    NSLog(@"%@",input);
    char buf[10];
    char *result = fgets(buf,10,stdin);
    // convert char *result to NSString
    NSString *str = [NSString stringWithUTF8String: buf];
    // remove all whitespaces of *str
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [str stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
}

@end
