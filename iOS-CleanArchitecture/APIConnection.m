//
//  APIConnection.m
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/12/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import "APIConnection.h"

@implementation APIConnection

+(APIConnection*)createGet
{
    return [[APIConnection alloc] init];
}

-(NSData*)get:(NSString*)url withResponse:(NSURLResponse**)response error:(NSError**)error
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:response error:error];
    return data;
}


@end
