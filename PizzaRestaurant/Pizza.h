//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PizzaSize) {
	SMALL,
	MEDIUM,
	LARGE,
};

@interface Pizza : NSObject

- (instancetype)initWithSize: (PizzaSize *) size andToppings: (NSArray *) toppings;

- (PizzaSize) getPizzaSize;
- (NSArray *) getPizzaToppings;

@end

NS_ASSUME_NONNULL_END
