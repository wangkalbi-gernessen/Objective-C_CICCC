//
//  PaymentGateway.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger *) randomDollar {
    if ([_delegate canProcessPayment] == YES) {
        [_delegate processPaymentAmount:randomDollar];
    } else {
        NSLog(@"Sorry! Payment cannot be processed.");
    }
}


@end
