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
        [definition injectProperty:@selector(userRepository) with:self.userRepository];
    }];
}

-(id<UserRepository>)userRepository {
    return [TyphoonDefinition withClass:[UserDataRepository class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(userDataStoreFactory) with:self.userDataStoreFactory];
    }];
}

-(UserDataStoreFactory*)userDataStoreFactory {
    return [TyphoonDefinition withClass:[UserDataStoreFactory class] configuration:^(TyphoonDefinition *definition) {
    }];
}

//-(id<UserDataStore>)cloudUserDataStore {
//    return [TyphoonDefinition withClass:[CloudUserDataStore class] configuration:^(TyphoonDefinition *definition) {
//        [definition injectProperty:@selector(restApi) with:self.restApi];
//    }];
//}
//
//-(id<RestApi>)restApi {
//    return [TyphoonDefinition withClass:[RestApiImpl class] configuration:^(TyphoonDefinition *definition) {
//        [definition injectProperty:@selector(apiConnection) with:self.apiConnection];
//    }];
//}
//
//-(APIConnection*)apiConnection {
//    return [TyphoonDefinition withClass:[APIConnection class] configuration:^(TyphoonDefinition *definition) {
//        
//    }];
//}

@end