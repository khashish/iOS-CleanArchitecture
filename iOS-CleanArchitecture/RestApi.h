//
//  RestApi.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/18/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@protocol RestApi <NSObject>

-(RACSignal*)getUsers;

@end
