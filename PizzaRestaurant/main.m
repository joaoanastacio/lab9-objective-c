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
#import "AnchoviesHaterManager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
		AnchoviesHaterManager * anchoviesHaterManager = [[AnchoviesHaterManager alloc] initWithDeliveryService:ds];
		CheeryManager * cheeryManager = [[CheeryManager alloc] init];
		[restaurantKitchen setDelegate: anchoviesHaterManager];
        
        while (TRUE) {
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
			
			NSString *pizzaSizeInput = [commandWords[0] uppercaseString];
			NSMutableArray *pizzaToppingsUnformatted = [commandWords mutableCopy];
			[pizzaToppingsUnformatted removeObjectAtIndex: 0];

			NSArray *pizzaToppingsFormatted = [pizzaToppingsUnformatted mutableCopy];
			PizzaSize pizzaSize;
			
			if([pizzaSizeInput isEqualToString: @"SMALL"]) {
				pizzaSize = SMALL;
			}
			
			if([pizzaSizeInput isEqualToString: @"MEDIUM"]) {
				pizzaSize = MEDIUM;
			}
			
			if([pizzaSizeInput isEqualToString: @"LARGE"]) {
				pizzaSize = LARGE;
			}
			
            // And then send some message to the kitchen...
			Pizza *bakedPizza = [restaurantKitchen makePizzaWithSize: pizzaSize toppings:pizzaToppingsFormatted];
			NSLog(@"Pizza Size: %lu", [bakedPizza getPizzaSize]);
			NSLog(@"Pizza Toppings: %@", [bakedPizza getPizzaToppings]);
        }

    }
    return 0;
}

