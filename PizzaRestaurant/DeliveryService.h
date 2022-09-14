//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Joao Victor Silva Anastacio on 2022-09-14.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic, strong) NSMutableArray* record;
@property (nonatomic, readonly) DeliveryCar* car;

-(instancetype) init;
-(void)deliverPizza: (Pizza *) pizza;
-(void)showRecords;

@end

NS_ASSUME_NONNULL_END
