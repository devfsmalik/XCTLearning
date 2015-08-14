//
//  NetworkCallsTestCase.m
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "AFNetworking.h"

@interface NetworkCallsTestCase : XCTestCase


@end

@implementation NetworkCallsTestCase

-(void)testAdsAPIResponse   {
    
    NSString *urlString = @"http://tom-app-1017.appspot.com/get_all_ads";
    NSURL *baseURL = [NSURL URLWithString:urlString];
    XCTestExpectation *exp = [self expectationWithDescription:@"ready"];
    
    AFHTTPSessionManager *manager = [self Get_AFHTTPSessionManager:baseURL];
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSArray *responseArray = (NSArray *)responseObject;
        XCTAssertGreaterThanOrEqual([responseArray count], 7,"No ads are coming");
        
        [exp fulfill];
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:5 handler:^(NSError *error){
        
        XCTAssertNil(error,@"Un successful Call");
    }];
    
    
}







-(AFHTTPSessionManager *)Get_AFHTTPSessionManager:(NSURL *)baseURL{
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    return manager;
}













@end



