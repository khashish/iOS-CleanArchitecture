////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2015, Typhoon Framework Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import "ApplicationAssembly.h"
#import "UserListPresenter.h"
#import "GetUserListUseCaseImpl.h"

@implementation ApplicationAssembly

//-------------------------------------------------------------------------------------------
#pragma mark - Bootstrapping
//-------------------------------------------------------------------------------------------

- (UserListViewController*)viewController
{
    return [TyphoonDefinition withClass:[UserListViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(userListPresenter) with:self.userListPresenter];
    }];
}
            
-(UserListPresenter*)userListPresenter {
    return [TyphoonDefinition withClass:[UserListPresenter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(getUserListUseCase) with:self.getUserListUseCase];
    }];
}

-(GetUserListUseCaseImpl*)getUserListUseCase {
    return [TyphoonDefinition withClass:[GetUserListUseCaseImpl class] configuration:^(TyphoonDefinition *definition) {
    }];
}

@end