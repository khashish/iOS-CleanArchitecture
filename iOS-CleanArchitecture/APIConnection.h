//
//  APIConnection.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/12/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIConnection : NSObject

+(APIConnection*)createGet;
-(NSData*)get:(NSString*)url withResponse:(NSURLResponse**)response error:(NSError**)error;

@end
