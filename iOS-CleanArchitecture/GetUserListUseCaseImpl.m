//
//  GetUserListUseCaseImpl.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "GetUserListUseCaseImpl.h"

@implementation GetUserListUseCaseImpl

-(void)execute:(id<RACSubscriber>)subscriber {
    [super execute:subscriber];
}

-(RACSignal *)buildUseCaseSignal {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://jsonplaceholder.typicode.com/users"]];
        
        NSArray<User*> *users = [User arrayOfModelsFromData:data error:nil];
        [subscriber sendNext:users];
        [subscriber sendCompleted];
        return [RACDisposable disposableWithBlock:^{

        }];
    }];
}

@end
