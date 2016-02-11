//
//  UserListView.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/9/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoadDataView.h"

@protocol UserListView <LoadDataView>

-(void)renderUserList:(NSArray*)users;
-(void)viewUser;

@end
