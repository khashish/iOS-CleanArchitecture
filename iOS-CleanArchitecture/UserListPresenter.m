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
    [self.getUserListUseCase execute:self];
}

-(void)sendCompleted
{
    
}

-(void)sendNext:(id)value
{
    NSLog(@"value %@ ", [[value objectAtIndex:0] name]);
}

-(void)sendError:(NSError *)error
{
    
}

-(void)didSubscribeWithDisposable:(RACCompoundDisposable *)disposable
{
    
}


@end
