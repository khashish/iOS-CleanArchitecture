//
//  UseCase.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "UseCase.h"

@implementation UseCase {
    RACDisposable *lSubscriber;
}

-(void)unsubscribe {
    [lSubscriber dispose];
}

-(RACSignal*)buildUseCaseSignal {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

-(void)execute:(id<RACSubscriber>)subscriber {
    lSubscriber = [[[[self buildUseCaseSignal] subscribeOn:[RACScheduler schedulerWithPriority:DISPATCH_QUEUE_PRIORITY_BACKGROUND]] deliverOn:[RACScheduler mainThreadScheduler]] subscribe:subscriber];
}

@end
