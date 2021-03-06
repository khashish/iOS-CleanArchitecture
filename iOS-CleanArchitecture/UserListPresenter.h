//
//  UserListPresenter.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/9/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presenter.h"
#import "GetUserList.h"

@interface UserListPresenter : NSObject<Presenter>

@property(nonatomic, strong) id<GetUserList> getUserListUseCase;

-(void)initialize;

@end

@interface UserListSubscriber : NSObject<RACSubscriber>

@property(nonatomic, weak) UserListPresenter *userListPresenter;

-(instancetype)initWithPresenter:(UserListPresenter*)presenter;

@end