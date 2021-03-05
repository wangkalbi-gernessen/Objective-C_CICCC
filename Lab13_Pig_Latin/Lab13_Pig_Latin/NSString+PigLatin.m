//
//  NSString+PigLatin.m
//  Lab13_Pig_Latin
//
//  Created by Kazunobu Someya on 2021-03-05.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
- (NSString *) stringByPigLatinization {
    NSString *result = @"";
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    NSMutableArray *consonantChunks = [[self componentsSeparatedByCharactersInSet:vowels] mutableCopy];
    NSString *firstArray = [consonantChunks objectAtIndex:0];
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    
    for (int i = 0; i < [self length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [characters addObject:ichar];
    }
    
    [characters removeObjectsInRange:NSMakeRange(0, [firstArray length])];
    [characters addObject:firstArray];
    [characters addObject:@"ay"];
    result = [characters componentsJoinedByString:@""];
    result = [NSString stringWithFormat:@"%@%@",[[result substringToIndex:1] uppercaseString],[result substringFromIndex:1]];
   
    return result;
}
@end
