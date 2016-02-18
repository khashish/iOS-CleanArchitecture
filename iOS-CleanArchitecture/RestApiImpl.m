//
//  RestApiImpl.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "RestApiImpl.h"

@implementation RestApiImpl

-(RACSignal *)getUsers
{
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        NSData *responseObject = [[APIConnection createGet] get:@"http://jsonplaceholder.typicode.com/users" withResponse:nil error:nil];
        NSArray<User*> *users = [User arrayOfModelsFromData:responseObject error:nil];
        [subscriber sendNext:users];
        [subscriber sendCompleted];

        return [RACDisposable disposableWithBlock:^{
            
        }];
    }];
}

@end
