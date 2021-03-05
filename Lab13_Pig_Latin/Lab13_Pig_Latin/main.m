//
//  main.m
//  Lab13_Pig_Latin
//
//  Created by Kazunobu Someya on 2021-03-04.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"amazon money";
        str = [str stringByPigLatinization];
        NSLog(@"pig latin is %@",str);
    }
    return 0;
}
