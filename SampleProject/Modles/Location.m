//
//  Location.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "Location.h"
#import "State.h"
#import "RLMLocation.h"

@implementation Location
@synthesize state = _state;

#pragma mark - Accessors

- (State*) state {
    if (!_state) {
        _state = [State proxyForDBEntity:[(RLMLocation*)self.dbEntity state]];
    }
    return _state;
}

@end
