//
//  UseCase.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface UseCase : NSObject

-(void)unsubscribe;
-(RACSignal*)buildUseCaseSignal;
-(void)execute:(id<RACSubscriber>)subscriber;

@end
