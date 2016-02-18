//
//  RestApiImpl.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestApi.h"
#import "APIConnection.h"
#import "User.h"

@interface RestApiImpl : NSObject<RestApi>

@property (nonatomic, strong) APIConnection *apiConnection;

@end
