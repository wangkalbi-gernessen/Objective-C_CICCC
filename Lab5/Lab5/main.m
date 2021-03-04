//
//  main.m
//  Lab5
//
//  Created by Kazunobu Someya on 2021-02-28.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while(gameOn == YES) {
            InputHandler *input = [[InputHandler alloc] init];
            NSLog(@"MATHS! There are 10 questions.");
            int right = 0;
            int wrong = 0;
            int count = 10;
            while(count > 0) {
                NSInteger first = arc4random_uniform(100) + 10;
                NSInteger second = arc4random_uniform(100) + 10;
                AdditionQuestion *addQuestion = [[AdditionQuestion alloc]  initWithLeft:first right:second];
                
                NSLog(@"%@", addQuestion.question);
//                NSString *question = @"%@ Please enter 'quit' to quit", addQuestion.question
//                NSString *inputResult = [input inputHandler: [@"%@ Please enter 'quit' to quit", addQuestion.question]];
                
                // stop game
                if ([inputResult isEqualToString:@"quit"]) {
                    NSLog(@"Finish Game");
                    gameOn = NO;
                    break;
                // continue game
                } else {
                    if (inputResult.intValue == addQuestion.answer) {
                        NSLog(@"Right!");
                        right++;
                    } else if ((inputResult.intValue == nil || inputResult.intValue != addQuestion.answer)) {
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
