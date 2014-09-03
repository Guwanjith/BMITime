//
//  BNRPerson.h
//  BMITime
//
//  Created by Guwanjith Tennekoon on 8/21/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

//BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;

@end
