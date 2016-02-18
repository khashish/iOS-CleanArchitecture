//
//  UserDataStoreFactory.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CloudUserDataStore.h"
#import "UserDataStore.h"
#import "RestApiImpl.h"

@interface UserDataStoreFactory : NSObject

@property(nonatomic, strong) CloudUserDataStore* cloudUserDataStore;

-(id<UserDataStore>)createUserCloudDataStore;

@end
