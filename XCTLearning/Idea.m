//
//  Idea.m
//  XCTLearning
//
//  Created by Salman Khalid on 10/08/2015.
//  Copyright (c) 2015 Salman Khalid. All rights reserved.
//

#import "Idea.h"

@implementation Idea

@synthesize ideaID, ideaText;


-(int)match:(NSArray *)_ideasArray  {
    
    int returnCount = 0;
    
    for (Idea *tempIdea in _ideasArray) {
        
        if([tempIdea.ideaText isEqualToString:ideaText])
            returnCount ++;
    }
    
    return returnCount;
}

@end
