//
//  GetUserList.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseUseCase.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@protocol GetUserList<BaseUseCase>

-(void)execute:(id<RACSubscriber>)subscriber;

@end
