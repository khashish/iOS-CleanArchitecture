//
//  ApplicationAssembly.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/5/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "TyphoonAssembly.h"
#import "UserListViewController.h"
#import "UserDataRepository.h"
#import "RestApi.h"
#import "RestApiImpl.h"

@interface ApplicationAssembly : TyphoonAssembly

- (UserListViewController*)viewController;

@end