//
//  ViewController.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/5/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "UserListViewController.h"

@interface UserListViewController ()

@end

@implementation UserListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.userListPresenter initialize];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)renderUserList:(NSArray*)users
{
    
}

-(void)viewUser
{
    
}

-(void)showLoading
{
#warning show a loading view here
}

-(void)hideLoading
{
#warning hide loading view here
}


-(void)showError:(NSString *)message
{
#warning show error message here
}


@end
