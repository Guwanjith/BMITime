//
//  BNREmployee.h
//  BMITime
//
//  Created by Guwanjith Tennekoon on 8/21/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
-(double)yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(void)removeAsset: (BNRAsset *)a;
-(unsigned int)valueOfAssets;
@end
