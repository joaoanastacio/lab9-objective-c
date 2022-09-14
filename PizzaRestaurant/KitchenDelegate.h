//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Kitchen;

NS_ASSUME_NONNULL_BEGIN

@protocol KitchenDelegate <NSObject>

+ (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

+ (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

+ (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
