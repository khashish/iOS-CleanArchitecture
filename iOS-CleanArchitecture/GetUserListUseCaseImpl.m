//
//  GetUserListUseCaseImpl.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "GetUserListUseCaseImpl.h"
#import <AFNetworking/AFNetworking.h>

@implementation GetUserListUseCaseImpl

-(void)execute:(id<RACSubscriber>)subscriber {
    [super execute:subscriber];
}

-(RACSignal *)buildUseCaseSignal {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.android10.org/myapi/users.json"]];
//        NSDictionary *dataDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        [subscriber sendNext:nil];
        [subscriber sendCompleted];
        return [RACDisposable disposableWithBlock:^{

        }];
    }];
}

@end
