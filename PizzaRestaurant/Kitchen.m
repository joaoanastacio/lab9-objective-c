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

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
	if(self.delegate) {
		if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
			Pizza * pizza;
			
			if([self.delegate kitchenShouldUpgradeOrder:self]) {
				pizza = [[Pizza alloc]initWithSize: LARGE andToppings:toppings];
			} else {
				pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
			}
				
			if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
				[self.delegate kitchenDidMakePizza:pizza];
			}
				
			return pizza;
		}
	}
	return NULL;
}

+ (Pizza *) largePepperoni {
	Pizza *newPizza = [[Pizza alloc] initWithSize: LARGE  andToppings: @[@"pepperoni"]];
	return newPizza;
}

+ (Pizza *) meatLoversWithSize: (PizzaSize) size {
	Pizza *newPizza = [[Pizza alloc] initWithSize: &size andToppings: @[@"bacon", @"ham", @"hot sausage", @"pepperoni"]];
	return newPizza;
}

@end
