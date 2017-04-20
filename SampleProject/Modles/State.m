//
//  State.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "State.h"
#import "Location.h"
#import "RLMState.h"

@implementation State
@synthesize locations = _locations;

#pragma mark - Accessors

- (NSArray*) locations {
    
    if (!_locations) {
        NSMutableArray *locations = [NSMutableArray array];
        for (RLMLocation *location in [(RLMState*)self.dbEntity locations]) {
            [locations addObject:[Location proxyForDBEntity:location]];
        }
        _locations = [NSArray arrayWithArray:locations];
    }
    return _locations;
}

@end
