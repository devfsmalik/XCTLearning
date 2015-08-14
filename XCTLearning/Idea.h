//
//  Idea.h
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Idea : NSObject {

    NSString *ideaID;
    NSString *IdeaText;

}

@property (nonatomic, strong) NSString *ideaID;
@property (nonatomic, strong) NSString *ideaText;

-(int)match:(NSArray *)_ideasArray;
@end
