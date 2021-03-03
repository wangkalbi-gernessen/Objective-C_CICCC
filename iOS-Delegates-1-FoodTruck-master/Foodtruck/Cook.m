//
//  Cook.m
//  Foodtruck
//
//  Created by Kazunobu Someya on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    double chargeRatio;
    if ([food.lowercaseString isEqualToString: @"bao"]) {
        chargeRatio = 1.5;
    } else if ([food.lowercaseString isEqualToString:@"shortbread"]) {
        chargeRatio = 2.0;
    } else {
        chargeRatio = 2.5;
    }
    return chargeRatio;
}

@end
