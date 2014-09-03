//
//  BNRPerson.m
//  BMITime
//
//  Created by Guwanjith Tennekoon on 8/21/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson


-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos]/(h*h);
    
}

-(void)addYourselfToArray:(NSMutableArray *)theArray
{
    [theArray addObject:self];
}
@end
