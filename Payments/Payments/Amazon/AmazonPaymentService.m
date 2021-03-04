//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)randomDollar {
    NSLog(@"Amazon proceed amount $%ld", randomDollar);
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
