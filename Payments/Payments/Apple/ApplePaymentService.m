//
//  ApplePaymentService.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-04.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)randomDollar {
    NSLog(@"Apple proceed amount $%ld", randomDollar);
}

- (BOOL)canProcessPayment {
    NSInteger *num = arc4random_uniform(2);
    if (num == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
