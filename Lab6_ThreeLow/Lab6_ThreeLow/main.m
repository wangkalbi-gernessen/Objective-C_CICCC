//
//  main.m
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Dice *dice = [[Dice alloc] init];
        int first = [dice randomizeDice];
        int second = [dice randomizeDice];
        int third = [dice randomizeDice];
        int fourth = [dice randomizeDice];
        int fifth = [dice randomizeDice];
        NSLog(@"%d,%d,%d,%d,%d",first,second,third,fourth,fifth);
        
    }
    return 0;
}
