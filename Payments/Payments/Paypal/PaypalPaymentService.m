//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)randomDollar {
    NSLog(@"Paypal proceed amount $%ld", randomDollar);
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
