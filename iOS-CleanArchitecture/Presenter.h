//
//  Presenter.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/9/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Presenter <NSObject>

-(void)willAppear;
-(void)willDisappear;
-(void)destroy;

@end
