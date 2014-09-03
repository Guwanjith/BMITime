//
//  BNREmployee.m
//  BMITime
//
//  Created by Guwanjith Tennekoon on 8/21/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//Class extension
@interface BNREmployee ()

{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int  officeAlarmCode;

@end

@implementation BNREmployee

//Accessors for assets properties
-(void)setAssets:(NSArray *)a;
{
    _assets = [a mutableCopy];
}

-(NSArray *)assets
{
    return [_assets copy];
}

-(void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets){
        //Create the array
        _assets = [[NSMutableSet alloc] init];
        
    }
    [_assets addObject:a];
    a.holder = self;
}

-(void)removeAsset:(BNRAsset *)a
{
    // Is asset nil?
    if (_assets){
        [_assets removeObject:a];
    }
}

-(unsigned int)valueOfAssets
{
    //Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(double)yearsOfEmployment
{
    //Do I have a non-nil hireDate?
    if (self.hireDate){
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        //return total seconds by # of seconds a year to get the number of years
        return secs/31557600.0;
    }else{
        return 0;
    }
}

-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
