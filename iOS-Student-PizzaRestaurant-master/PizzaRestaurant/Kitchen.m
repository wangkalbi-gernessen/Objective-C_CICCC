//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *) makePizzaWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings
{
    Pizza *pizza = [[Pizza alloc] initWithPizzaSize:size AndTopping:toppings];
    return pizza;
}

- (Pizza *) makeCombination {
    Pizza *combi = [Pizza largePepperoni];
    return combi;
}

@end
