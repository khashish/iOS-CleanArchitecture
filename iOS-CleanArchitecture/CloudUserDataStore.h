//
//  CloudUserDataStore.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserDataStore.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "RestApi.h"

@interface CloudUserDataStore : NSObject<UserDataStore>

@property (nonatomic, strong) id<RestApi> restApi;

-(instancetype)initWithRestApi:(id<RestApi>)restApi;

@end
