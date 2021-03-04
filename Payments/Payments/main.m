//
//  main.m
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            NSInteger *dollars = arc4random_uniform(901) + 100;
            NSString *menu = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", dollars];
            InputHandler *input = [[InputHandler alloc] init];
            NSString *inputResult = [input treatUserInput:menu];
            int inputVal = inputResult.intValue;
            
            PaymentGateway *paymentGW = [[PaymentGateway alloc] init];
            
            switch (inputVal) {
                case 1:
                    {
                        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                        paymentGW.delegate = paypal;
                        [paymentGW processPaymentAmount:dollars];
                    }
                    break;
                case 2:
                    {
                        StripePaymentService *stripe = [[StripePaymentService alloc] init];
                        paymentGW.delegate = stripe;
                        [paymentGW processPaymentAmount:dollars];
                    }
                    break;
                case 3:
                    {
                        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                        paymentGW.delegate = amazon;
                        [paymentGW processPaymentAmount:dollars];
                    }
                    break;
                case 4:
                    {
                        ApplePaymentService *apple = [[ApplePaymentService alloc] init];
                        paymentGW.delegate = apple;
                        [paymentGW processPaymentAmount:dollars];
                    }
                    break;
                default:
                    NSLog(@"The number doesn't exist");
            }
        }
    }
    return 0;
}
