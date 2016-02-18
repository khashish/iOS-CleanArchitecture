//
//  UserDataRepository.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "UserDataRepository.h"

@implementation UserDataRepository

-(RACSignal *)getUsers
{
    id<UserDataStore> userDataStore = [self.userDataStoreFactory createUserCloudDataStore];
    return [userDataStore getUsers];
}

@end
