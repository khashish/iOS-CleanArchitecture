//
//  ViewController.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/5/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.getUserListUseCase execute:self];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendNext:(id)value {
    NSLog(@"here");
}

-(void)sendError:(NSError *)error {
    
}

-(void)sendCompleted {
    
}

-(void)didSubscribeWithDisposable:(RACDisposable *)disposable {
    
}

@end
