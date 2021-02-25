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
                if (left > right) {
                    _answer = left - right;
                    _question = [NSString stringWithFormat: @"%ld - %ld ?", _left, _right];
                } else {
                    _answer = right - left;
                    _question = [NSString stringWithFormat: @"%ld - %ld ?", _right, _left];
                }
                break;
            case 2: op = '*';
                _answer = _left * _right;
                _question = [NSString stringWithFormat: @"%ld * %ld ?", _left, _right];
                break;
            case 3: op = '/';
                if (left > right && left % right == 0) {
                    _answer = left / right;
                    _question = [NSString stringWithFormat: @"%ld / %ld ?", _left, _right];
                } else if (right > left && right % left == 0) {
                    _answer = right / left;
                    _question = [NSString stringWithFormat: @"%ld / %ld ?", _right, _left];
                } else {
                    _answer = left / right;
                    _question = [NSString stringWithFormat: @"%ld / %ld ?", _left, _right];
                }
                break;
        }
    }
    return self;
}

@end
