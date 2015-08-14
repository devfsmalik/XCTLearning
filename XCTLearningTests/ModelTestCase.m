//
//  ModelTestCase.m
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "Idea.h"

@interface ModelTestCase : XCTestCase

@property (nonatomic, strong) Idea *_idea;

@end


@implementation ModelTestCase


- (void)setUp {
    [super setUp];

    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
//    self.vc = nil;
    [super tearDown];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

// 1

-(void)testIdeaTextNilOrNot   {
    
    __idea = [[Idea alloc] init];
    __idea.ideaText = @"Random Idea";
    
    XCTAssertNotNil(__idea.ideaText,"Idea Text is Nill");
}

- (void)testMatchesForAtLeastOneCard
{
    Idea *idea1 = [[Idea alloc] init];
    idea1.ideaText = @"one";
    Idea *idea2 = [[Idea alloc] init];
    idea2.ideaText = @"two";
    Idea *idea3 = [[Idea alloc] init];
    idea3.ideaText = @"one";
    
    NSArray *arrayOfCards = @[idea2, idea3];
    int matchCount = [idea1 match:arrayOfCards];
    XCTAssertEqual(matchCount, 1, @"Should have matched at least 1");
}



@end