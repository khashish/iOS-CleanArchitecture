//
//  UserDataRepository.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserRepository.h"
#import "UserDataStoreFactory.h"
#import "UserDataStore.h"

@interface UserDataRepository : NSObject<UserRepository>

@property(strong, nonatomic) UserDataStoreFactory *userDataStoreFactory;

@end
