//
//  CloudUserDataStore.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "CloudUserDataStore.h"

@implementation CloudUserDataStore

-(instancetype)initWithRestApi:(id<RestApi>)restApi
{
    self = [super init];
    
    if (self)
    {
        self.restApi = restApi;
    }
    
    return self;
}

-(RACSignal*)getUsers
{
    return [self.restApi getUsers];
}

@end
