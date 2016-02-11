//
//  User.h
//  iOS-CleanArchitecture
//
//  Created by Khaled Hashish on 2/8/16.
//  Copyright © 2016 Khaled Hashish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@interface User_company : JSONModel

@property (nonatomic, strong)  NSString <Optional>  * bs;

@property (nonatomic, strong)  NSString <Optional>  * name;

@property (nonatomic, strong)  NSString <Optional>  * catchPhrase;

@end 



@interface User_company_address_geo : JSONModel

@property (nonatomic, strong)  NSString <Optional>  * lat;

@property (nonatomic, strong)  NSString <Optional>  * lng;

@end 



@interface User_company_address : JSONModel

@property (nonatomic, strong)  NSString <Optional>  * suite;

@property (nonatomic, strong)  NSString <Optional>  * street;

@property (nonatomic, strong) User_company_address_geo * geo;

@property (nonatomic, strong)  NSString <Optional>  * zipcode;

@property (nonatomic, strong)  NSString <Optional>  * city;

@end 



@interface User : JSONModel

@property (nonatomic, strong)  NSString <Optional>  * username;

@property (nonatomic, strong)  NSString <Optional>  * website;

@property (nonatomic, strong)  NSString <Optional>  * name;

@property (nonatomic, strong) User_company * company;

@property (nonatomic, strong)  NSNumber <Optional>  * id;

@property (nonatomic, strong)  NSString <Optional>  * phone;

@property (nonatomic, strong) User_company_address * address;

@property (nonatomic, strong)  NSString <Optional>  * email;

@end 

