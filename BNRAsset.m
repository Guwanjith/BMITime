//
//  BNRAsset.m
//  BMITime
//
//  Created by Guwanjith Tennekoon on 8/23/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset:NSObject

-(NSString *)description
{
    //Is holder nil?
    if(self.holder){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}


-(void)dealloc
{
    NSLog(@"deallocating %@", self);

}
@end
