//
//  AnchoviesHaterManager.m
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "AnchoviesHaterManager.h"

@implementation AnchoviesHaterManager

//-(instancetype) initWithDeliveryService: (DeliveryService*) delivery_service {
//	self = [super init];
//	if(self) {
//		_delivery_service = delivery_service;
//	}
//	return self;
//}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
	for (NSString *topping in toppings) {
		if ([topping caseInsensitiveCompare:@"anchovies"] == NSOrderedSame) {
			return NO;
		}
	}
	return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
	return NO;
}

-(void)kitchenDidMakePizza: (Pizza *)pizza {
//	[self.delivery_service deliverPizza:pizza];
}

@end
