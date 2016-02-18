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
    return [self.userRepository getUsers];
    
//    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//        AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//        
//        NSURL *URL = [NSURL URLWithString:@"http://jsonplaceholder.typicode.com/users"];
//        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20000];
////        [request ]
//        NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
//            if (error) {
//                NSLog(@"Error: %@", error);
//            } else {
//                NSArray<User*> *users = [User arrayOfModelsFromDictionaries:responseObject error:nil];
//                [subscriber sendNext:users];
//                [subscriber sendCompleted];
//            }
//        }];
//        
//        [dataTask resume];
        
        
//        return [RACDisposable disposableWithBlock:^{
//            
//        }];
//    }];
}

@end
