//
//  AnotherCook.m
//  Foodtruck
//
//  Created by Kazunobu Someya on 2021-03-03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "AnotherCook.h"

@implementation AnotherCook

-(double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    double chargeRatio = 0;

    if ([food.lowercaseString isEqualToString: @"bao"]) {
        chargeRatio = 3.0;
    } else if ([food.lowercaseString isEqualToString:@"shortbread"]) {
        chargeRatio = 3.5;
    } else {
        chargeRatio = 4.0;
    }
    return chargeRatio;
}

@end
