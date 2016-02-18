//
//  GetUserListUseCaseImpl.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UseCase.h"
#import "GetUserList.h"
#import "User.h"
#import <JSONModel/JSONModel.h>
#import "UserRepository.h"

@interface GetUserListUseCaseImpl : UseCase<GetUserList>

@property (nonatomic, strong) id<UserRepository> userRepository;

@end
