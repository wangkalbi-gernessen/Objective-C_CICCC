//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kazunobu Someya on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef enum {
    small,
    medium,
    large,
} PizzaSize;

@property PizzaSize pizzaSize;
@property NSMutableArray *topping;

- (instancetype)initWithPizzaSize: (PizzaSize) pizzaSize AndTopping: (NSArray *) topping;
- (NSString *) returnPizzaSize;
+ (Pizza *) largePepperoni;

@end

NS_ASSUME_NONNULL_END
