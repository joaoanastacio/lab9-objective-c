//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

//-(instancetype) initWithDeliveryService: (DeliveryService*) delivery_service {
//	self = [super init];
//	if(self) {
//		_delivery_service = delivery_service;
//	}
//	return self;
//}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
	return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
	return YES;
}

-(void)kitchenDidMakePizza: (Pizza *)pizza {
	NSLog(@"Cheery Manager Actioned");
	[self.delivery_service deliverPizza:pizza];
}

@end
