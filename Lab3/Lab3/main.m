//
//  main.m
//  Lab3
//
//  Created by Kazunobu Someya on 2021-02-24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while(gameOn == YES) {
            NSLog(@"MATHS! There are 10 questions.");
            int right = 0;
            int wrong = 0;
            int count = 10;
            while(count > 0) {
                NSInteger first = arc4random_uniform(100) + 10;
                NSInteger second = arc4random_uniform(100) + 10;
                AdditionQuestion *addQuestion = [[AdditionQuestion alloc]  initWithLeft:first right:second];
                
                NSLog(@"%@ Please enter 'quit' to quit", addQuestion.question);
                char buf[10];
                char *result = fgets(buf,10,stdin);
                // convert char *result to NSString
                NSString *str = [NSString stringWithUTF8String: buf];
                // remove all whitespaces of *str
                NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
                NSString *trimmedInput = [str stringByTrimmingCharactersInSet: whitespaces];
                
                // stop game
                if ([trimmedInput isEqualToString:@"quit"]) {
                    NSLog(@"Finish Game");
                    gameOn = NO;
                    break;
                // continue game
                } else {
                    if (trimmedInput.intValue == addQuestion.answer) {
                        NSLog(@"Right!");
                        right++;
                    } else if ((trimmedInput.intValue == nil || trimmedInput.intValue != addQuestion.answer)) {
                        NSLog(@"Wrong!");
                        wrong++;
                    }
                }
                count--;
                
                if (count == 0) {
                    NSLog(@"Score is %d right & %d wrong / 10 questions", right, wrong);
                }
            }
        }
   }
    return 0;
}
