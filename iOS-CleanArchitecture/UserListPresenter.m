//
//  UserListPresenter.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/9/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "UserListPresenter.h"

@implementation UserListPresenter


-(void)willAppear
{
    
}

-(void)willDisappear
{
    
}

-(void)destroy
{
    
}

-(void)initialize
{
    [self.getUserListUseCase execute:[[UserListSubscriber alloc] initWithPresenter:self]];
}

@end


@implementation UserListSubscriber


-(instancetype)initWithPresenter:(UserListPresenter*)presenter {
    self = [super init];
    if (self)
    {
        self.userListPresenter = presenter;
    }
    
    return self;
}

-(void)sendCompleted
{
    
}

-(void)sendNext:(id)value
{
    NSLog(@"value %@ ", [[value objectAtIndex:0] name]);
//    [self.userListPresenter.getUserListUseCase execute:[[UserListSubscriber alloc] init]];
}

-(void)sendError:(NSError *)error
{
    
}

-(void)didSubscribeWithDisposable:(RACCompoundDisposable *)disposable
{
    
}

@end
