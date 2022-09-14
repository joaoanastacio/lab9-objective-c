//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza {
	PizzaSize *size;
	NSArray *topping;
}

- (instancetype)initWithSize: (PizzaSize *) size andToppings: (NSArray *) toppings {
	if (self == [super init]) {
		size = size;
		topping = toppings;
	}
	return self;
}


- (PizzaSize) getPizzaSize {
	return size;
}

- (NSArray *) getPizzaToppings {
	return topping;
}

@end
