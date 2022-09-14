//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-14.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

-(instancetype) init {
	self = [super init];
	if(self) {
		_record = [[NSMutableArray alloc] init];
		_car = [[DeliveryCar alloc] init];
	}
	return self;
}

-(void)deliverPizza: (Pizza *) pizza {
	[self.record addObject:pizza];
	[self.car deliverPizza:pizza];
}

-(void)showRecords {
	for(id item in self.record) {
		NSLog(@"%@", [item getPizzaSize]);
		NSLog(@"%@", [item getPizzaToppings]);
	}
}

@end
