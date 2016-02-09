//
//  ViewController.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/5/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "GetUserListUseCaseImpl.h"

@interface ViewController : UIViewController<RACSubscriber>

@property (nonatomic, strong) GetUserListUseCaseImpl * getUserListUseCase;

@end

