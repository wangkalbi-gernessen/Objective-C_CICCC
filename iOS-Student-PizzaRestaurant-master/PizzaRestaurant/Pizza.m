//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kazunobu Someya on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize: (PizzaSize) pizzaSize AndTopping: (NSMutableArray *) topping
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _topping = topping;
    }
    return self;
}

- (NSString *) returnPizzaSize {
    switch (_pizzaSize) {
        case small:
            return @"small";
            break;
        case medium:
            return @"medium";
            break;
        case large:
            return @"large";
            break;
        default:
            return @"";
            break;
    }
}

// combine size with topping
+ (Pizza *) largePepperoni {
    NSMutableArray *combinatedPizza = [NSMutableArray new];
    [combinatedPizza addObject:@"Pepperoni"];
    Pizza *combi = [[Pizza alloc] initWithPizzaSize:large AndTopping:combinatedPizza];
    return combi;
}

@end
