//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager : NSObject<KitchenDelegate>

@property (nonatomic, readonly) DeliveryService * delivery_service;
-(instancetype) initWithDeliveryService: (DeliveryService*) delivery_service;

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
