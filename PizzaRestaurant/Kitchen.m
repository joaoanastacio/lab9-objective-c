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
	if ([toppings containsObject: @"pepperoni"] && size == LARGE) {
		return [Kitchen largePepperoni];
	} else if ([toppings count] == 0) {
		return [Kitchen meatLoversWithSize: &size];
	} else {
		Pizza *newPizza = [[Pizza alloc] initWithSize: &size andToppings: toppings];
		return newPizza;
	}
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
