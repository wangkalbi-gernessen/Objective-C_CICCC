//
//  PaymentGateway.h
//  Payments
//
//  Created by Kazunobu Someya on 2021-03-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
- (BOOL) canProcessPayment;
- (void) processPaymentAmount: (NSInteger *) randomDollar;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;
- (void) processPaymentAmount: (NSInteger *) randomDollar;

@end

NS_ASSUME_NONNULL_END
