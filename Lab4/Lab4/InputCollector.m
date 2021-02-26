//
//  InputCollector.m
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *) inputForPrompt: (NSString *) promptString {
    NSLog(@"%@", promptString);
    char buf[30];
    char *input = fgets(buf, 30, stdin);
    // convert char *result to NSString
    NSString *str = [NSString stringWithUTF8String: buf];
    // remove all whitespaces of *str
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [str stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
}

@end
