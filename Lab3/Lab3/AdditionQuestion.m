//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Kazunobu Someya on 2021-02-24.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)initWithLeft:(NSInteger) left right: (NSInteger) right
{
    self = [super init];
    if (self) {
        _left = left;
        _right = right;
        
        char op;
        switch(arc4random_uniform(4)) {
            case 0: op = '+';
                _answer = _left + _right;
//                NSString *str = [NSString stringWithFormat:@"%d", num];
                _question = [NSString stringWithFormat: @"%ld + %ld ?", _left, _right];
                break;
            case 1: op = '-';
                _answer = left - right;
                _question = [NSString stringWithFormat: @"%ld - %ld ?", _left, _right];
                break;
            case 2: op = '*';
                _answer = _left * _right;
                _question = [NSString stringWithFormat: @"%ld * %ld ?", _left, _right];
                break;
            case 3: op = '/';
                _answer = left / right;
                _question = [NSString stringWithFormat: @"%ld / %ld ?", _left, _right];
                break;
        }
    }
    return self;
}

@end
