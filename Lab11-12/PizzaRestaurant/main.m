//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            // And then send some message to the kitchen...
            
            if ([commandWords[0] isEqualToString: @"small"]) {
                NSMutableArray *toppings = [NSMutableArray new];
                for(int i = 1; i < [commandWords count]; i++) {
                    [toppings addObject:commandWords[i]];
                }
                
                Pizza *obj = [restaurantKitchen makePizzaWithSize: small  toppings:toppings];
                NSString *result = [obj returnPizzaSize];
                NSLog(@"%@",result);
                
            } else if ([commandWords[0] isEqualToString: @"medium"]) {
                NSMutableArray *toppings = [NSMutableArray new];
                for(int i = 1; i < [commandWords count]; i++) {
                    [toppings addObject:commandWords[i]];
                }
                Pizza *obj = [restaurantKitchen makePizzaWithSize: medium  toppings:toppings];
                
            } else if ([commandWords[0] isEqualToString: @"large"]) {
                NSMutableArray *toppings = [NSMutableArray new];
                for(int i = 1; i < [commandWords count]; i++) {
                    [toppings addObject:commandWords[i]];
                }
                Pizza *obj = [restaurantKitchen makePizzaWithSize: large  toppings:toppings];
            } else if ([commandWords[0] isEqualToString:@"pepperoni"]) {
                Pizza *combination = [restaurantKitchen makeCombination];
                NSLog(@"This %@ pizza is %@", [combination returnPizzaSize], [combination topping]);
            }
            
        }

    }
    return 0;
}

