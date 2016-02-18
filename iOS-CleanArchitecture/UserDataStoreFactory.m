//
//  UserDataStoreFactory.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "UserDataStoreFactory.h"

@implementation UserDataStoreFactory

-(id<UserDataStore>)createUserCloudDataStore
{
    return [[CloudUserDataStore alloc] initWithRestApi:[[RestApiImpl alloc] init]];
}

@end
